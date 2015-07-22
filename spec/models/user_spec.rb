# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  email              :string           not null
#  username           :string           not null
#  password_digest    :string           not null
#  session_token      :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  provider           :string
#  uid                :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  describe "validations" do
    subject { build(:user) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_uniqueness_of(:email) }

    it 'is valid when username, email and pw are present' do
      expect(build(:user)).to be_valid
    end

    it 'is invalid when password is absent on creation' do
      expect(build(:user, password: '')).not_to be_valid
    end

    it 'is invalid when password is less than 6 chars' do
      expect(build(:user, password: 'short')).not_to be_valid
    end
  end

  describe "creation" do
    subject { create(:user, password: "password") }
    it 'does not store plaintext password after creation' do
      persisted_subject = User.find(subject.id)
      expect(persisted_subject.password).to be(nil)
      expect(persisted_subject.password_digest).not_to be(nil)
      expect(persisted_subject.password_digest).not_to eq("password")
    end
  end
end
