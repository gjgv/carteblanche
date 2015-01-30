class Macaron < ActiveRecord::Base
  has_many :order_items
  
  def icon
    "http://macaroncafe.com/js/jQuery/img/gallery/#{image_url}"
  end
  def image
    "http://macaroncafe.com/js/jQuery/img/gallery/#{image_url}"
  end

end
