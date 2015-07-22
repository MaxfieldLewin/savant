# == Schema Information
#
# Table name: artists
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  description        :text
#  verified_user_id   :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Artist < ActiveRecord::Base
  include PgSearch
  validates :name, presence: true

  has_attached_file :image, default_url: "missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :songs

  has_many :comments, as: :commentable

  multisearchable against: :name
end
