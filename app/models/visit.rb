class Visit < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :consultant
  belongs_to :vital
  attr_accessible :date, :issues, :prescriptions, :sensitivity
end
