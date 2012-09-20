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
        format.html {redirect_to(posts_path)}
        format.js
       else
         format.html {render :action => 'new'}
      end
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_with(posts_path) do |format|
      format.html
      format.js
    end
  end
  
end
