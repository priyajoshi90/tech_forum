class EmpMaster < ActiveRecord::Base
  belongs_to :emp_login
  has_many :empteches
  has_many :techmasters, :through => :emptech
  validates_presence_of :tcs_id, :message => 'TCS Id cannot be blank '
end
