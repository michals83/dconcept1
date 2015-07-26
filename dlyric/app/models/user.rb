class User < ActiveRecord::Base

  # Need to decide on whether to use foreign key or junction table
  # additional features - links (soundcloud, fb, bandcamp, etc.)
  # history

  attr_accessor :password_plain
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :on => :create
  validates_uniqueness_of :email

  has_many :verses

  def encrypt_password
  	if password.present?
  		password_salt = BCrypt::Engine.generate_salt
  		self.password = BCrypt::Engine.hash_secret(password, password_salt)
  	end
  end
end
