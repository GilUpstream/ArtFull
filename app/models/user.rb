class User < ActiveRecord::Base
  validates :fname, presence: true, length: { minimum: 2, maximum: 25}, format: { with: /\A[a-zA-Z]+\z/, message: "How about giving us only letters..." }
  validates :lname, presence: true, length: { minimum: 2, maximum: 25 }, format: { with: /\A[a-zA-Z]+\z/, message: "How about giving us only letters..." }
  validates :username, presence: true, length: { minimum: 5 }, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pieces, through: :check_ins
  has_many :check_ins
end
