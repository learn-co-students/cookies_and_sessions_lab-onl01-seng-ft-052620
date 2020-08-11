class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :cart

  def cart
    if session[:cart]
      session[:cart]
    else
      session[:cart] = []
    end
  end

end
