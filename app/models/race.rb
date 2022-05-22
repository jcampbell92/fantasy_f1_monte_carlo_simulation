class Race < ApplicationRecord
  has_many :results
  has_many :sprint_results
  has_many :drivers, :through => :results
end
