module ApplicationHelper
  def form_group_tag(errors, &block)
    css_class = 'form-group'
    css_class << ' has-error' if errors.any?
    content_tag :div, capture(&block), class: css_class
  end

  def avatar_url(current_user)
    gravatar_id = Digest::MD5::hexdigest(current_user.email).downcase
    return "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end
end
