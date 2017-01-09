class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :user

  def total
    total = 0
    line_items.each do |li|
      total += li.item.price * li.quantity
    end
    total
  end

  def add_item(item_id)
    line_item = line_items.find_by(item_id: item_id)
    if line_item
      line_item.quantity += 1
    else
      line_item = line_items.build(item_id: item_id)
    end
    line_item
  end

  def checkout
    line_items.each do |li|
      li.item.inventory -= li.quantity
      li.item.save
    end
    user.current_cart = nil
    user.save
  end
end
