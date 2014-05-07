class Forum < ActiveRecord::Base
  belongs_to :emptech
  belongs_to :emp_login
  has_many :replies 
  
end
