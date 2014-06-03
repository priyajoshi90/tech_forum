class Emptech < ActiveRecord::Base
  belongs_to :emp_master
  belongs_to :techmaster
end
