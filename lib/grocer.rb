require "pry"

def find_item_by_name_in_collection(name, collection)
  counter = 0

  while counter < collection.length
    if collection[counter][:item] == name
      return collection[counter]
    end
    counter += 1
  end
end

def consolidate_cart(cart)
  # return a new array of hashes
  new_arr = []
  counter = 0

  while counter < cart.length
    binding.pry
    cart_item = find_item_by_name_in_collection(cart[counter][:item], new_arr)
    if cart_item != nil
      cart[counter][:item] += 1
    else
      cart_item = {
        :item => cart_item,
        :price => cart[counter][:price]
        :clearance => cart[counter][:clearance]
        :count => 1
      }
    end
    counter += 1
  end
  new_arr
end
