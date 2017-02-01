# your code goes here

require "pry"
require "pry-nav"

def begins_with_r(array)
  array.all? do |element|
    element.start_with?('r')
  end
  # i = 0
  # new_array = []
  # while i < array.length
  #   if array[i].start_with?('r')
  #     new_array << array[i]
  #   end
  #
  #   i = i + 1
  # end
  #
  # if new_array.length == array.length
  #   return true
  # else
  #   return false
  # end
end

def contain_a(array)
  array.find_all do |element|
    element.include?('a')
  end
end

def first_wa(array)
  array.find do |element|
    if element.is_a? String
      element.start_with?('wa')
    else
      next
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a? String
  end
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(keys, data)
  new_result = []
  keys.each do |name_hash|
    name = name_hash[:first_name]
    data.each do |name_nested_attributes|
      if name_nested_attributes[name]
          merged_person = name_nested_attributes[name]
          merged_person = name_hash.merge(merged_person)
          new_result << merged_person
      end
    end
  end
  new_result
end

def find_cool(array)
  cool_array = []
  array.each do |hash|
    hash.each do |key, value|
      if hash[key] == "cool"
        cool_array << hash
      end
    end
  end
  cool_array
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school, hash|
    location = hash[:location]
    if new_hash[location]
      new_hash[location] << school
    else
      new_hash[location] = []
      new_hash[location] << school
    end
  end
  new_hash
  # {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
  # "SF"=>["dev boot camp", "Hack Reactor"],
  # "Chicago"=>["dev boot camp chicago"]}
end
