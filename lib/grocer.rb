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
    cart_item = find_item_by_name_in_collection(cart[counter][:item])
    counter += 1
  end
end
