class Reply < ActiveRecord::Base
  belongs_to :emp_login
  belongs_to :forum
end
