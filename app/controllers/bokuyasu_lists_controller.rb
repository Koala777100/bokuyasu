class BokuyasuListsController < ApplicationController
  before_action :authenticate_admin!, only:[:create, :edit, :update, :destroy]

  def index
  end

  def create
    @bokuyasu_list = BokuyasuList.new(bokuyasu_list_params)
    if @bokuyasu_list.save
      redirect_to lists_path, notice: "投稿に成功しました！"
    else
      render :confirm
    end
  end

  def confirm
    @bokuyasu_list = BokuyasuList.new
    @bokuyasu_list.title = params[:bokuyasu_list][:title]
    @bokuyasu_list.body = params[:bokuyasu_list][:body]
    @bokuyasu_list.image = params[:bokuyasu_list][:image]
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @bokuyasu_list = BokuyasuList.find(params[:id])
    @bokuyasu_list.destroy
    redirect_to lists_path
  end

  private
  def bokuyasu_list_params
    params.require(:bokuyasu_list).permit(:title, :body, :image_id)
  end
end
