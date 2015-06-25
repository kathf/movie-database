class CastMember < ActiveRecord::Base
  has_many :castings
  has_many :movies, through: :castings
  validates :name, uniqueness: true
end
