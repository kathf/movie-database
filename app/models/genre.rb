class Genre < ActiveRecord::Base
  has_and_belongs_to_many :movies
  validates :name, presence: true, uniqueness: true
  include PgSearch
  multisearchable against: :name
end
