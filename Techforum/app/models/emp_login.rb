class EmpLogin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 has_one :emp_master
 has_many :wfhs
 has_many :leaves
 has_one :emptech
 has_many :forums
 has_many  :replies
  
 def self.search(search, page)
  paginate :per_page => 5, :page => page
 end
end
