class HomesController < ApplicationController
  def top
    @blogs = Blog.all
    @list = List.new
  end

  def about

  end

end
