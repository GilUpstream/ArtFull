class User < ActiveRecord::Base
  has_merit

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

  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id", class_name: "Relationship"
  has_many :followers, through: :reverse_relationships, source: :follower

  def following?(other_user)
    relationships.find_by(followed_id: other_user.id) ? true : false
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy
  end

  def followed_checkins
    followed_user_checkins = []
    self.relationships.each do |relationship|
      followed_user = User.find(relationship.followed_id)
      followed_user.check_ins.each do |check_in|
        followed_user_checkins.push(check_in)
      end
    end
    followed_user_checkins.sort.reverse
  end

  def gravatar_path
  end
end





