class PagesController < ApplicationController
  def Home
    @blogs = Blog.order("created_at DESC").first(3)
  end

  def About
  end

  def Contact
  end

  def Team
  end
end
