class Song < ActiveRecord::Base
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
end
