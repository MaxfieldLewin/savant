class Comment < ActiveRecord::Base
  has_attached_file :image, default_url: "missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  belongs_to :commentable, polymorphic: true

  belongs_to :user, inverse_of: :comments
end
