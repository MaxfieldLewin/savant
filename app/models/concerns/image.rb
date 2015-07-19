module Image
  extend ActiveSupport::Concern

  included do
    has_attached_file :image, default_url: "missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  end

end