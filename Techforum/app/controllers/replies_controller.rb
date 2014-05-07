class RepliesController < ApplicationController
  before_action :set_reply, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @forum = Forum.find(params[:forum_id])
    @reply = Reply.new
  end

  # GET /replies/1/edit
  def edit
  end

  # POST /replies
  # POST /replies.json
  def create
    @forum = Forum.find(params[:forum_id])
    @reply = @forum.replies.create(params[:reply])
    if @reply.save
      @forum.update_attribute("no_of_replies", @forum.no_of_comments.to_i + 1)
      redirect_to forum_url(@forum), notice: 'Your reply was saved successfully.'
    else
      redirect_to forum_url(@forum), notice: "Couldn't save your reply!"
    end
  end

  # PATCH/PUT /replies/1
  # PATCH/PUT /replies/1.json
  def update
  end

  # DELETE /replies/1
  # DELETE /replies/1.json
  def destroy
    @forum = Forum.find(params[:forum_id])
    @reply = @forum.replies.find(params[:id])
    if @reply.destroy and @forum.update_attribute("no_of_comments", @forum.no_of_comments.to_i - 1)
      redirect_to forum_url(@forum), notice: 'Reply was moderated successfully.'
    else
      redirect_to forum_url(@forum), notice: 'Reply was moderated successfully.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reply
      @reply = Reply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params.require(:reply).permit(:nestreply_id, :answer, :emp_login_id, :forum_id)
    end
end
