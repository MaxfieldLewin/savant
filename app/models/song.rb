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

  around_update :adjust_fragments

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
    previous_contents = self.contents

    yield

    diff_blocks = previous_contents.diff(self.contents)
    fragments = self.song_fragments.order(:offset_start).to_a
    adjustOffset = 0

    diff_blocks.each do |block|
      adds = block.count { |b| b[0] == "+" }
      subs = block.count { |b| b[0] == "-" }
      adjustOffset += (adds - subs)

      touching_fragments, fragments = fragments.partition do |f|
        f.offset_start >= block.last[1] || f.offset_end <= block.first[1]
      end
      
      touching_fragments.each do |f|
        f.offset_start += adjustOffset
        f.offset_end += adjustOffset


        f.save(validate: false)
      end
    end

  end
end
