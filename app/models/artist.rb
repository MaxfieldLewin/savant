class Artist < ActiveRecord::Base
  validates :name, presence: true

  has_many :songs,
    class_name: "Song",
    foreign_key: :artist_id,
    primary_key: :id
end
