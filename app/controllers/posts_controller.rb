class PostsController < ApplicationController
  
  respond_to :html, :js, :xml, :json
  
  def index
    @title = 'posts'
    @header = 'posts'
    @posts = Post.all
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    respond_with do |format|
      if @post.save
        format.html {redirect_to @post}
        format.js
       else
         format.html {render :action => 'new'}
      end
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_with(posts_url) do |format|
      format.html
      format.js
    end
  end
  
end
