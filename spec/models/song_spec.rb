# == Schema Information
#
# Table name: songs
#
#  id                 :integer          not null, primary key
#  artist_id          :integer          not null
#  title              :string           not null
#  description        :text
#  contents           :text             not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    subject { build(:song) }
    it { should validate_presence_of(:title) }
    it { should belong_to(:artist) }
    it { should validate_uniqueness_of(:title).scoped_to(:artist_id)}
  end
end
