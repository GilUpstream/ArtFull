class Piece < ActiveRecord::Base
  belongs_to :location
  has_many :users, through: :check_ins
  has_many :check_ins

  validates :title, length: { maximum: 50 }
  validates :maker, length: { maximum: 50 }
  validates :stuff, length: { maximum: 50 }
end
