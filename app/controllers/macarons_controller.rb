class MacaronsController < ApplicationController
  before_action :set_macaron, only: [:show, :edit, :update, :destroy]

  def index
    @macarons = Macaron.all
    @order_item = current_order.order_items.new
  end

  def show
    @macaron = Macaron.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_macaron
      @macaron = Macaron.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def macaron_params
      params.require(:macaron).permit(:name, :image_url, :price, :stock)
    end
end
