
require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

  #   1) Grocer #find_item_by_name_in_collection takes two arguments:
  #   a String and an AoH and when a contained Hash's :item key matches the String returns the matching Hash
    #
    # collection.each do |one|
    #   new_hash = {}
    #   one.each do |key, value|
    #     if one[key] == name
    #       new_hash[key] = name
    #       binding.pry
    #     end
    #   end
    # end
    # new_hash


    counter = 0

    while counter < collection.length
      if collection[counter][:item] == name
        return collection[counter]
      end
      counter += 1
    end
end

def consolidate_cart(cart)

#  take in a 'cart', an array of hashes of individual items and
# return a new array of hashes
# but with each item containing a quantity
# expect {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 2}

counter = 0
  new_arr = []
while counter < cart.length
  new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_arr)
  if new_cart_item != nil
    new_cart_item[:count] += 1
  else
    new_cart_item = {
      :item => cart[counter][:item],
      :price => cart[counter][:price],
      :clearance => cart[counter][:clearance],
      :count => 1
    }
    new_arr << new_cart_item
  end
  counter += 1
end
new_arr
end
