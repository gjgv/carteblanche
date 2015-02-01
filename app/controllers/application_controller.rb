class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    # if !session[:order_id].nil?
    if !current_user.nil?
      if !Order.find_by(user_id: current_user.id).nil?
        Order.find_by user_id: current_user.id
      else
        Order.new
      end
    else
      Order.new
    end
  end
end
