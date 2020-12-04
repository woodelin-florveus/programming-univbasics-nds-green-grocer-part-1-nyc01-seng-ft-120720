def find_item_by_name_in_collection(name, collection)
  collection.keys.find do |value|
    if value[:item] == name
      return value
    else
      nil
    end
  end
end
