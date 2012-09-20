class PostsController < ApplicationController
  
  respond_to :html, :js
  
  def index
    @title = 'posts'
    @header = 'posts'
    @posts = Post.all
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    respond_with(@post) do |format|
      if @post.save
        format.html {redirect_to posts_path, :notice => 'post successfully created'}
        format.js
       else
         format.html {redirect_to posts_path}
      end
    end
  end
  
end
