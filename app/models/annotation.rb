class Annotation < ActiveRecord::Base
  includes Image

  validates :contents, :song_fragment_id, presence: true;
  validates :song_fragment_id, uniqueness: true

  belongs_to :song_fragment,
    class_name: "SongFragment",
    foreign_key: :song_fragment_id,
    primary_key: :id,
    inverse_of: :annotation
end
