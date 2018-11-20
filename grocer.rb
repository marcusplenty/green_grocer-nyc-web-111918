def consolidate_cart(cart)
  new_hash={}
  cart.each do |item|
    item.each do |food,hash1|
      if new_hash.include?(food)
        new_hash[food][:count] += 1

      else
        new_hash[food] = hash1
        new_hash[food][:count] = 1

        
      end
    end
  end
  return new_hash
end

def apply_coupons(cart, coupon)
  key = coupon[0][:item]
  decrement = coupon[0][:num]
  old_count = cart[0][key][:count]
  new_count = old_count-decrement
  new_key = key + " W/COUPON"
  new_price = coupon[0][:cost]
  if new_count >= 0
    cart[0][key][:count] = new_count
    cart[0][new_key] ={:price => new_price, :clearance => true, :count => 1}
  end
  return cart

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
