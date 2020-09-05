module ApplicationHelper
  def render_svg(name, styles: "fill-current text-gray-500", title: nil)
<<<<<<< HEAD
    filename = "#{name}.svg"
=======
    filename = "#{name.svg}"
>>>>>>> 07131c53cdaf8bb897e8dc70331bc50045732fff
    title ||= name.underscore.humanize
    inline_svg_tag(filename, aria: true, nocomment: true, title: title, class: styles)
  end

  def admin?
    user_signed_in? && current_user.admin?
  end

  def author_of(resource)
    user_signed_in? && current_user.id = resource.user_id
  end
<<<<<<< HEAD

  def select_arrow
    render partial: "shared/select_arrow.html.erb"
  end
=======
>>>>>>> 07131c53cdaf8bb897e8dc70331bc50045732fff
end
