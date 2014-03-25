class Piece < ActiveRecord::Base
  belongs_to :location
  has_many :users, through: :check_ins
  has_many :check_ins
end
