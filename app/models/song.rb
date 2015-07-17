class Song < ActiveRecord::Base
  validates :title, :artist_id, :contents, presence: true
  validates :title, uniqueness: {scope: :artist_id}

  belongs_to :artist

  has_many :song_fragments,
    class_name: "SongFragment",
    foreign_key: :song_id,
    primary_key: :id,
    inverse_of: :song
end
