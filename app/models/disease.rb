class Disease < ActiveRecord::Base
  attr_accessible :causes, :name, :symptoms
end
