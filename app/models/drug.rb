class Drug < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :price, :schedule
end
