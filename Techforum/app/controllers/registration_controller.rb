
class RegistrationController < Devise::RegistrationsController
prepend_before_filter :require_no_authentication, :except => [ :index, :new, :create, :edit, :show, :view, :update, :wfh, :leave ]

def new
 	#if emp_login_signed_in? && (current_emp_login.emp_master.role.eql?('admin'))
		@emp_login= EmpLogin.new
		@emp_master = EmpMaster.new
		
	#else
			#redirect_to root_url , notice: 'You are not authorized to perform this action .'	
	#end
end
def create
		@emp_login = EmpLogin.new
		@emp_master = EmpMaster.new
		@emptech = Emptech.new
		self.fetch(@emp_login, @emp_master, @emptech)
		self.save(@emp_login, @emp_master, @emptech)

end
def fetch(emp_login,emp_master,emptech)

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
@emptech.techmaster_id = params[:techmaster][:id]
@emptech.emp_master_id = params[:emp_master][:tcs_id]
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
def save(emp_login,emp_master,emptech)
		@emp_login= emp_login
		@emp_master= emp_master
		@emptech = emptech
		@emp_login.valid?
		@emp_master.valid?
		@emptech.valid?
		if @emp_login.errors.blank? and @emp_master.errors.blank? and @emptech.errors.blank?
			@emp_login.save
			@emp_master.emp_login = @emp_login		#Critical as initiates the reference between emp_login and emp_master models
			@techmasters = Techmaster.where(:id => @emptech.emp_master_id)
			@techmasters.each do techmaster
				@emptech.techmaster = techmaster
			end
			#@emptech.techmasters = Techmaster.where(:id => @emptech.emp_master_id)
			@emp_master.save
			@emptech.save
			redirect_to root_path
		else
			render :action => 'new'
		end
end
def show
		#@emp_logins = EmpLogin.paginate(:page => params[:page], :order => 'created_at desc',
      #:per_page => 5)
       		
  		#@emp_logins = EmpLogin.search(params[:search], params[:page])
		@emp_logins = EmpLogin.all
		@techmasters = Techmaster.all
		@empteches = Emptech.where(:techmaster_id => @techmasters.first.id)	
		#render :json => @empteches
		$counter = 0
		@forums= Forum.all
		@empteches.each do |emptech|
			@forums = Forum.where(:emptech_id => emptech.id)
			
			$counter = $counter+1
		end
		#render :text => $counter
		render :json => @forums	
		#@techmasters.each do |techmaster|
			#@empteches = Emptech.where(:techmaster_id => techmaster.id)
			#render :json => @empteches
			#return
		#end

end
def view
		
		@emp_login = current_emp_login
		#render :text => @emp_login.email
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
def update_emp_login(emp_login, emp_master)
		@emp_login = (EmpLogin.where(email: emp_login.email))[0]
		@emp_master = emp_master
		@emp_master.id = @emp_login.emp_master.id
		@emp_master.emp_login = emp_login
		@emp_master.valid?


		if !(@emp_master.emp_login.password.eql?("") or @emp_master.emp_login.password == nil) and (@emp_master.emp_login.password.eql?(@emp_master.emp_login.password_confirmation))

			@emp_login.password = EmpLogin.new(:password => @emp_master.emp_login.password).encrypted_password


			if @emp_master.errors.blank?
				if EmpMaster.update(@emp_master.id, :name => @emp_master.name, :tcs_id => @emp_master.tcs_id, :fm_no => @emp_master.fm_no, :address => @emp_master.address, :mobile => @emp_master.mobile, :birthday => @emp_master.birthday, :doj => @emp_master.doj, :dor => @emp_master.dor, :role => @emp_master.role, :tech => @emp_master.tech) and @emp_login.update_attribute(:encrypted_password, @emp_login.password)
					redirect_to show_emp_login_registration_url(@emp_login), notice: "Employee details and password updated successfully"
				else
					redirect_to view_emp_login_registration_url(@emp_login), notice: "Couldn't update employee details"				
				end
			else
				redirect_to view_emp_login_registration_url(@emp_login), notice: "Couldn't update employee details"
			end
		elsif @emp_master.emp_login.password.eql?("")
			if @emp_master.errors.blank?
				if EmpMaster.update(@emp_master.id, :name => @emp_master.name, :tcs_id => @emp_master.tcs_id, :fm_no => @emp_master.fm_no, :address => @emp_master.address, :mobile => @emp_master.mobile, :birthday => @emp_master.birthday, :doj => @emp_master.doj, :dor => @emp_master.dor, :role => @emp_master.role, :tech => @emp_master.tech)
					redirect_to root_url(@emp_login), notice: "Employee details updated successfully"
				else
					redirect_to view_emp_login_registration_url(@emp_login), notice: "Couldn't update employee details"
				end
			else
				redirect_to view_emp_login_registration_url(@emp_login), notice: "Couldn't update employee details"
			end

		else
			redirect_to view_emp_login_registration_url(@emp_login), notice: 'Password and confirm password should be same!'
		end
	end
# def wfh
# 		@wfh=Wfh.new
# end
end
