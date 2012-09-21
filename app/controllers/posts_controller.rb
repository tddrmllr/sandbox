class PostsController < ApplicationController
  
  respond_to :html, :js, :xml
  
  def index
    @title = 'posts'
    @header = 'posts'
    @posts = Post.all.sort_by{|t| - t.created_at.to_i}
    @post = Post.new
  end
  
  def create
    @new_post = Post.new(params[:post])
    @new_post.save
    @updated_posts = Post.all.sort_by{|t| - t.created_at.to_i}
    respond_with(@updated_posts)
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post_id = @post.id
    @post.destroy
    respond_with(@post_id)
  end
  
end
