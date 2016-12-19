class User < ActiveRecord::Base
  has_many :songs, through: :added_songs
  has_many :added_songs

  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true
  validates :password, presence: true, on: :create
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
