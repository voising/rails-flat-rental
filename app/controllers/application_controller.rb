class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def empty_html_ifn_json
    if request.format.html?
      render html: '', layout: 'application'
      return
    end
  end
end
