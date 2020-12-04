def find_item_by_name_in_collection(name, collection)
  collection.each do |value|
    binding.pry
    if value[:item] == name
      return value
    end
  end
end
