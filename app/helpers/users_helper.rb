module UsersHelper
  def user_avatar_url(user)
    return user.facebook_picture_url || "http://placehold.it/30x30"
  end
end
