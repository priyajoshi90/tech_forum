class LeaveController < ApplicationController
 def index
	if emp_login_signed_in? && current_emp_login.emp_master.role.eql?('normal')
		@leaves = current_emp_login.leaves
	elsif emp_login_signed_in? and current_emp_login.emp_master.role.eql?("admin")
		@leaves = Leave.all
	else
		@leaves = Leave.all
	end
  end
def new
		@leave = Leave.new
end
def create
	@emp_login = current_emp_login
	@leave = Leave.new(leave_params)
	@leave.emp_login = @emp_login
		if @leave.save
			redirect_to root_path, notice: 'Request for Leave was successfully created.'
		else
			render 'new', notice: 'could not save the request, please try again later!'
		end

end
def show
	@leave = Leave.find(params[:id])
  end

  def edit
  	@leave = Leave.find(params[:id])
  end

  def update
	@leave = Leave.find(params[:id])
	if @leave.update_attributes(params[:leave])
		redirect_to @leave, notice: 'Request was updated successfully.'
	else
		render 'edit', notice: 'Update failed!'
	end
  end

  def destroy
	@leave = Leave.find(params[:id])
	if @leave.destroy
		redirect_to leaves_url, notice: 'Request was deleted successfully.'
	else
		render 'index', notice: 'Request deletion failed!'
	end
  end
  private

  def leave_params
    params.require(:leave).permit(:fdate, :tdate, :comments)
  end
end
