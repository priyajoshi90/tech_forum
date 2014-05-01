class RegistrationController < Devise::RegistrationsController
prepend_before_filter :require_no_authentication, :except => [ :index, :new, :create, :edit, :show, :update ]

def new
 if emp_login_signed_in? && (current_emp_login.emp_master.role.eql?('admin'))

	@emp_login= EmpLogin.new
	@emp_master = EmpMaster.new
	else
			redirect_to root_url , notice: 'You are not authorized to perform this action .'	
		end
end
def create
		@emp_login = EmpLogin.new
		@emp_master = EmpMaster.new
		self.fetch(@emp_login, @emp_master)
		self.save(@emp_login, @emp_master)

end
def fetch(emp_login,emp_master)

# @emp_login = EmpLogin.new
@emp_login=emp_login
@emp_master=emp_master
@emp_login.email = params[:emp_login][:email]
@emp_login.password = params[:emp_login][:password]
@emp_login.password_confirmation =params[:emp_login][:password_confirmation]

# @emp_master = EmpMaster.new
@emp_master.tcs_id = params[:emp_master][:tcs_id]
@emp_master.fm_no = params[:emp_master][:fm_no]
@emp_master.name = params[:emp_master][:name]
@emp_master.role = params[:emp_master][:role]
@emp_master.birthday = params[:emp_master][:birthday]
@emp_master.doj = params[:emp_master][:doj]
@emp_master.dor = params[:emp_master][:dor]
@emp_master.mobile = params[:emp_master][:mobile]
@emp_master.address = params[:emp_master][:address]
# @emp_login.valid?
# if @emp_login.errors.blank?

# @emp_login.save
# @emp_master.emp_login = @emp_login
# @emp_master.save
# redirect_to root_path
# else
# render :action => "new"
# end
end
def save(emp_login,emp_master)
		@emp_login= emp_login
		@emp_master= emp_master
		@emp_login.valid?
		@emp_master.valid?
		if @emp_login.errors.blank? and @emp_master.errors.blank?
			@emp_login.save
			@emp_master.emp_login = @emp_login		#Critical as initiates the reference between emp_login and emp_master models
			@emp_master.save
			# redirect_to show_blogger_registration_url(@blogger), notice: "A new user named "+@detail.firstname+" "+@detail.lastname+" has been created successfully."
			redirect_to root_path
		else
			render :action => 'new'
		end
end
def show
		@emp_logins = EmpLogin.paginate page: params[:page], order: 'created_at desc',
      per_page: 5
end
def edit
		@emp_login = EmpLogin.find(params[:id])
end
def update
		@emp_login =  EmpLogin.new
		@emp_master = EmpMaster.new
		self.fetch(@emp_login, @emp_master)
		self.update_emp_login(@emp_login, @emp_master)		
end
end
