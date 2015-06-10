class Movie < ActiveRecord::Base
  has_and_belongs_to_many :genres

  has_one :director

  has_many :castings
  has_many :cast_members, through: :castings

  validates :title, presence: true
end
