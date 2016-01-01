class Api::V1::PostsController < Api::V1::BaseController
  before_action :authenticate_user, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show]

  def index
    topics = Topics.all
    posts = Post.all
    render json: topics.posts.to_json, status: 200
  end

  def show
    topic = Topic.find(params[:id])
    post = Post.find(params[:id])
    render json: topic.post.to_json, status: 200
  end
end
