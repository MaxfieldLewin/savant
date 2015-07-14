require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_uniqueness_of(:email) }

  it 'is valid when username, email and pw are present' do
    expect(build(:user)).to be_valid
  end

  it 'is invalid when username is absent' do
    expect(build(:user, username: '')).not_to be_valid
  end

  it 'is invalid when email is absent' do
    expect(build(:user, email: '')).not_to be_valid
  end

  it 'is invalid when password is absent on creation' do
    expect(build(:user, password: '')).not_to be_valid
  end

  it 'is invalid when password is less than 6 chars' do
    expect(build(:user, password: 'short')).not_to be_valid
  end

end
