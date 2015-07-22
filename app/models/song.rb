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

class Song < ActiveRecord::Base
  include PgSearch

  has_attached_file :image, default_url: "missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :title, :artist_id, :contents, presence: true
  validates :title, uniqueness: {scope: :artist_id}

  belongs_to :artist

  has_many :song_fragments,
    class_name: "SongFragment",
    foreign_key: :song_id,
    primary_key: :id,
    inverse_of: :song

    has_many :comments, as: :commentable


  multisearchable against: [:title, :contents]
end
