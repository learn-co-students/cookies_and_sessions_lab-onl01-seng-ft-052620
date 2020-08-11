class ApplicationController < ActionController::Base
  #add helper method :cart here to use cart in prod. controller
  helper_method :cart
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #1. ApplicationController cart returns the user's shopping cart, an initially empty array
  #2. creates a cart in the session if one doesn't exist
  #3. returns the existing cart if one already exists
  def cart
    session[:cart] ||= []
  end
end
