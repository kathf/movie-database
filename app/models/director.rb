class Director < ActiveRecord::Base
  has_and_belongs_to_many :movies
  validates :name, uniqueness: true
  include PgSearch
  multisearchable against: :name
end
