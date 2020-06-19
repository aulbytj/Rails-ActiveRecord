class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :password, length: { minimum: 6, maximum: 16 }, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  # validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, length: { minimum: 4, maximum: 12 }, presence: true, uniqueness: true
end
