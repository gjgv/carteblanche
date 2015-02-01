class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_cart!
  
  def new
  gon.client_token = generate_client_token
  end
 
  private
  def generate_client_token
    Braintree::ClientToken.generate
  end
  
  private
  def check_cart!
    if order.order_items.blank?
      redirect_to root_url, alert: "Please add some items to your cart before processing your transaction!"
    end
  end
end
