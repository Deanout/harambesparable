class HomeController < ApplicationController
  def home
    @blogs = Blog.order("created_at DESC").first(3)
  end
end
