module UsersHelper

  def posts_comments?(post, comment)
    unless @user.posts.count < 0 && @user.comments < 0
      "{user.name} has not submitted any posts yet."
    end
  end
end
