class Hospital < ActiveRecord::Base
  belongs_to :location
  attr_accessible :availability, :capacity, :name
end
