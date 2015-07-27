# == Schema Information
#
# Table name: songs
#
#  id                 :integer          not null, primary key
#  artist_id          :integer          not null
#  title              :string           not null
#  description        :text
#  contents           :text             not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#
require 'diff/lcs/string'

class Song < ActiveRecord::Base
  include PgSearch

  has_attached_file :image, default_url: "missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :title, :artist_id, :contents, presence: true
  validates :title, uniqueness: {scope: :artist_id}

  after_update :adjust_fragments

  belongs_to :artist

  belongs_to :genre

  has_many :song_fragments,
    class_name: "SongFragment",
    foreign_key: :song_id,
    primary_key: :id,
    inverse_of: :song

    has_many :comments, as: :commentable


  multisearchable against: [:title, :contents]

  def adjust_fragments
    previous_contents = self.contents_was
    diff_blocks = previous_contents.diff(self.contents)
    fragments = self.song_fragments.order(:offset_start).to_a
    adjustOffset = 0

    diff_blocks.each do |block|

      prior_fragments, fragments = fragments.partition do |f|
        f.offset_end < block.first.position
      end

      prior_fragments.each do |f|
        f.offset_start += adjustOffset
        f.offset_end += adjustOffset
        f.save(validate: false)
      end

      adds = block.count { |d| d.action == "+" }
      subs = block.count { |d| d.action == "-" }
      adjustOffset += (adds - subs)

      touching_fragments, fragments = fragments.partition do |f|
        (block.first.position >= f.offset_start && block.first.position <= f.offset_end) ||
        (block.last.position >= f.offset_start && block.last.position <= f.offset_end)
      end

      touching_fragments.each do |f|
        block.each do |d|
          if d.position < f.offset_start
            if d.action == "+"
              f.offset_start += 1
              f.offset_end += 1
            else
              f.offset_start -= 1
              f.offset_end -= 1
            end
          elsif d.position >= f.offset_start && d.position <= f.offset_end
            (d.action == "+") ? f.offset_end += 1 : f.offset_end -= 1
          end
        end

        f.offset_end - f.offset_start < 1 ? f.destroy : f.save(validate: false)
      end
    end

    fragments.each do |f|
      f.offset_start += adjustOffset
      f.offset_end += adjustOffset
      f.save(validate: false)
    end

  end
end
