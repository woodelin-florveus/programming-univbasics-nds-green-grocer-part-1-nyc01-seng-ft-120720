def find_item_by_name_in_collection(name, collection)
  counter = 0

  while counter < collection.length
    if collection[counter] == name
      return collection[counter][:item]
    end
    counter += 1
  end
end
