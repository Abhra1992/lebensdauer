class Facility < ActiveRecord::Base
  belongs_to :ftype, :class_name => 'FacilityType'
  belongs_to :location
  attr_accessible :close, :name, :open, :registration
end
