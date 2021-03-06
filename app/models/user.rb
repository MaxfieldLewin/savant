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

class User < ActiveRecord::Base
  has_attached_file :image, default_url: "missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :email, :username, uniqueness: true, presence: true
  validates :password, length: {minimum: 6, allow_nil: true}
  after_initialize :ensure_session_token

  has_many :comments, inverse_of: :user

  attr_reader :password
  attr_accessor :login_string, :login_status

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def self.find_by_credentials(login_string, password)
    user = User.find_by(username: login_string)
    if user && user.is_password?(password)
      return user
    else
      user = User.find_by(email: login_string)
      if user && user.is_password?(password)
        return user
      end
    end

    nil
  end

  def self.find_or_create_by_auth_hash(auth_hash)
  user = User.find_by(
          provider: auth_hash[:provider],
          uid: auth_hash[:uid])

  unless user
    user = User.create!(
          provider: auth_hash[:provider],
          uid: auth_hash[:uid],
          username: auth_hash[:info][:name],
          email: auth_hash[:info][:nickname], #bad solution
          password: SecureRandom::urlsafe_base64)
  end

  user
end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = nil
    self.session_token = User.generate_session_token
    self.save!
  end

  private
    def ensure_session_token
      self.session_token ||= User.generate_session_token
    end

end
