class Enterprise < ActiveRecord::Base
  belongs_to :category
  attr_accessible :email, :fax, :name, :registration
end
