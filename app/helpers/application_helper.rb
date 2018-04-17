module ApplicationHelper
  def badge(value, type)
    content_tag :span, value, class: %W[badge badge-#{type}]
  end
end
