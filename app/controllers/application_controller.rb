class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def empty_html_ifn_json
    render(html: '', layout: 'application') && return if request.format.html?
  end

  def after_sign_in_path_for(_resource)
    new_flat_path
  end
end
