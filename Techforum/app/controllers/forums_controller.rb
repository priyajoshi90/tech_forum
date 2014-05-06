class ForumsController < ApplicationController
  before_action :set_forum, only: [:show, :edit, :update, :destroy]

  # GET /forums
  # GET /forums.json
  before_filter :authenticate_emp_login!, :except => [:index, :show]
  def index
  if emp_login_signed_in? && current_emp_login.emp_master.role.eql?('normal')
    @forums = current_emp_login.forums
  elsif emp_login_signed_in? and current_emp_login.emp_master.role.eql?("admin")
    @forums = Forum.all
  else
    @forums = Forum.all
  end
  end

  # GET /forums/1
  # GET /forums/1.json
  def show
    @forum = Forum.find(params[:id])
  end

  # GET /forums/new
  def new
    @forum = Forum.new
  end

  # GET /forums/1/edit
  def edit
    @forum = Forum.find(params[:id])
  end

  # POST /forums
  # POST /forums.json
  def create
    @emp_login = current_emp_login
    @forum = Forum.new(forum_params)
    @forum.emp_login = @emp_login
    if @forum.save
      redirect_to root_path, notice: 'Post was successfully created.'
    else
      render 'new', notice: 'could not save the post, please try again later!'
    end
  end

  # PATCH/PUT /forums/1
  # PATCH/PUT /forums/1.json
  def update
    @forum = Forum.find(params[:id])
  if @forum.update_attributes(params[:forum])
    redirect_to @forum, notice: 'Post was updated successfully.'
  else
    render 'edit', notice: 'Update failed!'
  end
  end

  # DELETE /forums/1
  # DELETE /forums/1.json
  def destroy
    @forum.destroy
    respond_to do |format|
      format.html { redirect_to forums_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum
      @forum = Forum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forum_params
      params.require(:forum).permit(:qid, :question, :type, :emptech_id, :emp_login_id)
    end
end
