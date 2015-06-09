class PostsController < ApplicationController
  
  def index
  	page = params[:page] || 1
  	page_offset = (page - 1) * 10
  	@posts = Post.order(written_at: :desc).offset(page_offset).limit(10)
  end

  def show
    @post = Post.find(params[:id])
  end
end