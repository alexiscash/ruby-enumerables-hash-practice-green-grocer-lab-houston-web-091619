def consolidate_cart(cart)
  new_cart = {}
  cart.each do |elem|
    first = elem.keys.first
    if new_cart.include?(first)
      new_cart[first][:count] += 1
    else
      new_cart[first] = elem[first] 
      new_cart[first][:count] = 1 
    end
  end
  
  new_cart
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    if cart.include?(coupon[:item])
      puts cart[coupon[:item]]
    end
  end 
  cart
end



def apply_clearance(cart)
  cart.each do |elem|
    if elem.last[:clearance]
     p elem.last[:price] = (elem.last[:price] * 0.8).round(2)
    end
  end
    cart
end

def checkout(cart, coupons)
  # code here
end

coupons = [{:item => "AVOCADO", :num => 2, :cost => 5.00}]
grocery_cart = [
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"KALE"    => {:price => 3.00, :clearance => false}}
]

grocery_cart = consolidate_cart(grocery_cart)
p apply_coupons(grocery_cart)