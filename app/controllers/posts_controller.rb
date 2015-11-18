class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
     @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    # {"utf8"=>"✓", "authenticity_token"=>"8zE6IXVyWGZMTBP7qDrSXGABbtK53+JgQgz1VLL9tyzz0h4NDutp/rcIkDGwGTAtvLrJXu0DwhLoTy89uC/xsA==", "post"=>{"title"=>"Post title", "body"=>"Body stuff"}, "commit"=>"Save"}
    # {"title"=>"Post title", "body"=>"Body stuff"}
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

    if @post.save

      flash[:notice] = "Post was saved."
      redirect_to @post
    else

      flash[:error] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
  end
end
