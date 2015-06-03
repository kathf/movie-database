class Casting < ActiveRecord::Base
  belongs_to :movie
  belongs_to :cast_member
end
