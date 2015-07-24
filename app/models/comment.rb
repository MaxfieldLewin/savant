# == Schema Information
#
# Table name: comments
#
#  id                 :integer          not null, primary key
#  contents           :text             not null
#  user_id            :integer          not null
#  commentable_id     :integer
#  commentable_type   :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Comment < ActiveRecord::Base
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :commentable, polymorphic: true

  belongs_to :user, inverse_of: :comments
end
