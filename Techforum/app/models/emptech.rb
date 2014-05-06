class Emptech < ActiveRecord::Base
  belongs_to :techmaster
  belongs_to :emp_login
  has_many :forums
end
