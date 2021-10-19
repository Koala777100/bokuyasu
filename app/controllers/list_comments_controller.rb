class ListCommentsController < ApplicationController
  before_action :authenticate_admin!, only:[:destroy]

  def create
    @comment = ListComment.new(list_comment_params)
    @list = List.find(params[:list_id])
    @comment.list_id = @list.id
    if admin_signed_in?
      @comment.admin_id = admin.id
    end
    if @comment.save
      redirect_to list_path(@list)
    else
      @comments = @list.list_comments
      render "lists/show"
    end
  end

  def destroy
  end

  private
  def list_comment_params
    params.require(:list_comment).permit(:list_id, :admin_id, :body)
  end
end