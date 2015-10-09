class Workout < ActiveRecord::Base
  has_many :mins
  has_many :meds
  has_many :maxs
end
