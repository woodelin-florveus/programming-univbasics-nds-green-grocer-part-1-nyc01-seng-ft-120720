def find_item_by_name_in_collection(name, collection)
  # counter = 0
  #
  # while counter < collection.length
  #   if collection[counter][:item] == name
  #     return collection[counter][:item]
  #   end
  #   counter += 1
  # end


  collection.each do |value|
    value.each do |key, val|
      binding.pry
      if value[:item] == name
        return val
      end
    end
  end

end
