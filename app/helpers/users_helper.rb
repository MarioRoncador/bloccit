module UsersHelper
  def user_has_posts?
     @user.posts == nil
  end
end
