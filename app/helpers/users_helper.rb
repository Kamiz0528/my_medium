module UsersHelper
  def avatar(user, size: '250')
    image_tag user.avatar.variant(resize: "#{size}x#{size}"), class: 'user-avatar' if user.avatar.attached?
  end

  def user_role(current_user)
    if current_user.role == 'vip_user'
      "VIP會員"
    elsif current_user.role == 'platinum_user'
      "白金會員"
    else
      "不想說"
    end
  end
end