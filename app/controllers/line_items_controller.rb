class LineItemsController < ApplicationController
  def create
    user = current_user
    user.create_current_cart
    line_item = user.current_cart.add_item(params[:item_id])
    if line_item.save
      redirect_to cart_path(user.current_cart), notice: "Added #{line_item.item.title}"
    else
      redirect_to store_path, alert: "Couldn't add #{line_item.item.title}"
    end
  end

end
