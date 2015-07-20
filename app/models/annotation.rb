class Annotation < ActiveRecord::Base
  has_attached_file :image, default_url: "missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :contents, :song_fragment_id, presence: true;
  validates :song_fragment_id, uniqueness: true

  belongs_to :song_fragment,
    class_name: "SongFragment",
    foreign_key: :song_fragment_id,
    primary_key: :id,
    inverse_of: :annotation

  has_many :comments, as: :commentable
end
