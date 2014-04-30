class HomeController < ApplicationController
	def index
		@emp_login = EmpLogin.new
	end
end
