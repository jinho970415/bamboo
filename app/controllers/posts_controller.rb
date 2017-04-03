class PostsController < ApplicationController
  def index
  
    @posts = Post.all
    @post= Post.new
    

  end

  def create
    
    post = Post.new(post_params)

    post.save
    redirect_to posts_index_path

  end
  
  
  def post_params

    params.require(:post).permit(:name, :content)

  end


end
