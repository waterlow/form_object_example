class ProductDecorator < ApplicationDecorator
  delegate_all

  def sales_condition
    if available? then h.badge('販売中', :success)
    else               h.badge('販売不可', :secondary)
    end
  end

  def display_price
    h.number_to_currency price
  end

  def display_purchase_cost
    h.number_to_currency purchase_cost
  end
end
