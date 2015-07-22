# == Schema Information
#
# Table name: annotations
#
#  id                 :integer          not null, primary key
#  song_fragment_id   :integer          not null
#  contents           :text             not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

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
