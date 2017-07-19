module UsersHelper
  def user_avatar_url(user)
    return user.facebook_picture_url || user.profile_pic
  end
end
