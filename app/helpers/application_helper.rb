module ApplicationHelper
  def badge(value, type)
    content_tag :span, value, class: %W[badge badge-#{type}]
  end

  def two_column_option
    {wrapper_class: 'row', label_class: 'col-sm-4 col-form-label text-right', input_group_class: 'col-sm-8'}
  end

  def icon_text(icon, text)
    octicon(icon, class: 'align-middle')
      .concat(text)
  end
end
