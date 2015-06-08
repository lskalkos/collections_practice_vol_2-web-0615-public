# your code goes here

def begins_with_r(array)

  result = true

  array.each do |element|
    if element[0] != "r"
      result = false
    end
  end

  result

end

def contain_a(array)

  a_elements = []

  array.each do |element|
    if element.include?("a")
      a_elements << element
    end
  end

  a_elements

end

def first_wa(array)

  first_element = ""

  array.each do |word|
    if word.slice(0, 2) == "wa"
      first_element = word
      break
    end
  end

  first_element
end

def remove_non_strings(array)

  new_arr = []

  array.each do |element|
    if element.is_a?(String)
      new_arr << element
    end
  end

  new_arr
end

def count_elements(array)

  new_arr = [] #create a new array

  while array.length > 0 #while there are elements in the array

    name_hash = Hash.new(0) #create a hash where we can store name and count in
    name_hash[:name] = array.first[:name] #make the :name key equal the first name we find in the array

    array.each do |element| #for each element in the array
      if element[:name] == name_hash[:name] #check if the name in the hash is equal to the name in our hash
        name_hash[:count] += 1 #if it is, increase the count in that hash by 1
      end
    end

    new_arr << name_hash #add the new hash to our new array
    array.delete(array.first) #delete all the elements that we have just tallied in the original array
    #and start the loop over

  end

  new_arr

end

def merge_data(keys, data)

  keys.each do |name_hash|

    name = name_hash[:first_name]
    data[0][name].each do |property, value|
      name_hash[property] = value
    end

  end

end

def find_cool(array)

  new_arr = []

  array.each do |hash|
    if hash[:temperature] == "cool"
      new_arr << hash
    end
  end

  new_arr
end

def organize_schools(hash)

  school_hash = Hash.new(0) #initialize the hash we're going to return

  hash.each do |school, location_hash| #for each school in the hash we are given

    location = location_hash[:location] #grab the location of the school

    if school_hash[location] == 0 #if it's not already an array in our hash
      school_hash[location] = [] #make it one
    end

    school_hash[location] << school #then make the school the value of the location key in our hash

  end #do that for every school in the hash

  school_hash #return our new hash

end