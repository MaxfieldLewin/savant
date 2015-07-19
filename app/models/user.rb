class User < ActiveRecord::Base

  validates :email, :username, uniqueness: true, presence: true
  validates :password, length: {minimum: 6, allow_nil: true}
  after_initialize :ensure_session_token

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
