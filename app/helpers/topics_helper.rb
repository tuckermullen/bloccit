module TopicsHelper
  def user_is_authorized_for_topics?
    current_user && current_user.admin?
  end

  def user_is_authorized_as_a_mod?
    current_user && current_user.moderator?
  end
end
