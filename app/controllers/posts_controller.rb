class PostsController < ApplicationController
  # post to be all posts and ordered in descending order
  def index
    @posts = Post.all.order('created_at DESC')
  end
  # Want post = id
  # Want post displayed in most recent order
  def show 
    @post = Post.find(params[:id])
    @posts = Post.order("created_at desc").limit(4).offset(1)
  end
  private 
    def post_params
        params.require(:post).permit(:title, :body)
    end

end
