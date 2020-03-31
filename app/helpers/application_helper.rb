module ApplicationHelper
  def year
    Date.today.year
  end

  def github_url(caption, path)
    link_to caption, "https://github.com/#{path}", target: "_blank"
  end

  def bootstrap_class_for_flash(flash_type)
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-warning'
    when 'notice'
      'alert-info'
    else
      flash_type.to_s
    end
  end

end
