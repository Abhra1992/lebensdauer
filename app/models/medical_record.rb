class MedicalRecord < ActiveRecord::Base
  attr_accessible :closure, :comments, :onset
end
