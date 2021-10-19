class ListsController < ApplicationController
  before_action :authenticate_admin!,only: [:edit,:update,:destroy]

  def index
    @lists = List.all
    @list = List.new
    @bokuyasu_list = BokuyasuList.new
    @bokuyasu_lists = BokuyasuList.all
  end

  def confirm
    @list = List.new
    @list.title = params[:list][:title]
    @list.body = params[:list][:body]
    @list.name = params[:list][:name]
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path,  notice: "BUCKET LISTが投稿されました。ありがとうございます！"
    else
      render :confirm
    end
  end

  def show
    @list = List.find(params[:id])
    @comments = @list.list_comments
    @comment = ListComment.new
  end

  def edit
  end

  def update
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:title, :body, :name)
  end
end
