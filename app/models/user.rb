class User < ActiveRecord::Base

  validates :email, :username, uniqueness: true, presence: true
  validates :password, length: {minimum: 6, allow_nil: true}
  after_initialize :ensure_session_token

  attr_reader :password

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def self.find_by_credentials(loginString, password)
    user = User.find_by(username: loginString)
    if user && user.is_password?(password)
      return user
    else
      user = User.find_by(email: loginString)
      if user && user.is_password?(password)
        return user
      end
    end

    nil
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
    self.ensure_session_token
    self.save!
  end

  private
    def ensure_session_token
      self.session_token ||= User.generate_session_token
    end

end
