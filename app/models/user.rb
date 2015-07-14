class User < ActiveRecord::Base

  validates :email, :username, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}

  attr_reader :password

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  private
    def ensure_session_token
      self.session_token ||= User.generate_session_token
    end

end
