class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  belongs_to :language
  belongs_to :marital_status
  belongs_to :nationality
  belongs_to :ethnicity
  attr_accessible :SSN, :address, :birthdate, :firstname, :lastname, :middlename, :phone, :photo, :sex
  
  def Sex
    sex == true ? 'Male' : 'Female'
  end
  
  def fullname
    "%s %s" % [firstname, lastname]
  end
end
