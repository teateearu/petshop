class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :shopping_cart

  protected

  def shopping_cart
    @cart ||= ShoppingCart.new(session)
  end
end
