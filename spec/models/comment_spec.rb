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

require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
