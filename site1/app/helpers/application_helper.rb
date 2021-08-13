module ApplicationHelper

  def flash_message
    flash.map do |key, msg|
      content_tag :div, msg, :id => key, :class => 'alert alert-' + (key.to_s=='alert' ? 'danger' : 'info')
    end.join.html_safe 
  end

end
