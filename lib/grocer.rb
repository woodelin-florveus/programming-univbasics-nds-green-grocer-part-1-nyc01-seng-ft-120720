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
  counter = 0
  new_arr = []
  while counter < cart.length
    new_cart = find_item_by_name_in_collection(cart[counter][:item], new_arr)
    if new_cart != nil
      new_cart[:count] += 1
    else
      new_cart = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      new_arr << new_cart
    end
    counter += 1
  end
  new_arr
end
