class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
    @blogs = Blog.all
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body, :blog_image)
  end
end
