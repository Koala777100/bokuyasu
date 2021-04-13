class HomesController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def about

  end

end
