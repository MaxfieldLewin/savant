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

require 'rails_helper'
require 'spec_helper'
RSpec.describe Artist, type: :model do
  describe "validations" do
    subject { build(:artist) }
    it { should validate_presence_of(:name) }
  end
end
