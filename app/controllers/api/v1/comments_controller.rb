class Api::V1::CommentsController < Api::V1::BaseController
  before_action :authenticate_user, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show]

  def index
    topic = Topic.find(params[:id])
    post = Post.find(params[:id])
    comments = Comment.all
    render json: comments.to_json, status: 200
  end

  def show
    topic = Topic.find(params[:id])
    post = Post.find(params[:id])
    comment = Comment.find(params[:id])
    render json: comment.to_json, status: 200
  end
end
