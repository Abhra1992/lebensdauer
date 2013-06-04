class Department < ActiveRecord::Base
  belongs_to :category
  belongs_to :dtype
  attr_accessible :affiliation
end
