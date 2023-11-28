class PagesController < ApplicationController
  def index
    @posts = Post.limit(4)
  end
end
