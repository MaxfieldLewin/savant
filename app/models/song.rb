class Song < ActiveRecord::Base
  validates :title, :artist_id, :contents, presence: true
  validates :title, uniqueness: {scope: :artist_id}

  belongs_to :artist,
    class_name: "Artist",
    foreign_key: :artist_id,
    primary_key: :id
end
