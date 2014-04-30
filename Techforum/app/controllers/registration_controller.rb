class RegistrationController < Devise::RegistrationsController

def new
@emp_login= EmpLogin.new
@emp_master = EmpMaster.new
end

def create

@emp_login = EmpLogin.new
@emp_login.email = params[:emp_login][:email]
@emp_login.password = params[:emp_login][:password]
@emp_login.password_confirmation =params[:emp_login][:password_confirmation]

@emp_master = EmpMaster.new
@emp_master.tcs_id = params[:emp_master][:tcs_id]
@emp_master.fm_no = params[:emp_master][:fm_no]
@emp_master.name = params[:emp_master][:name]
@emp_master.role = params[:emp_master][:role]
@emp_master.birthday = params[:emp_master][:birthday]
@emp_master.doj = params[:emp_master][:doj]
@emp_master.dor = params[:emp_master][:dor]
@emp_master.mobile = params[:emp_master][:mobile]
@emp_master.address = params[:emp_master][:address]
@emp_login.valid?
if @emp_login.errors.blank?

@emp_login.save
@emp_master.emp_login = @emp_login
@emp_master.save
redirect_to root_path
else
render :action => "new"
end
end

end
