class Driver < ApplicationRecord
  has_many :results
  has_many :sprint_results
  has_many :races, :through => :results
  belongs_to :team
end
