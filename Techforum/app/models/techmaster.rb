class Techmaster < ActiveRecord::Base
  has_many :empteches	
  has_many :emp_masters, :through => :emptech
end
