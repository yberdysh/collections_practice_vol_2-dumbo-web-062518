require "pry"
# your code goes here
def begins_with_r(arr)
	arr.all?{|elem| elem[0].downcase == "r"}
end

def contain_a(arr)
	arr.select{|ele| ele.include?("a")}
end

def first_wa(arr)
	arr.find{|ele| ele.to_s.start_with?("wa")}
end

def remove_non_strings(arr)
	arr.select{|el| el.instance_of? String}
end

def count_elements(arr)
	counter = 0;
	final_array = []
	initial_array = arr
	initial_array.uniq.each do |elem|
		counter = arr.count(elem)
		elem[:count] = counter
		final_array << elem
	end
	final_array
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
  end.uniq
end


def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(arr)
	arr.find_all{|item| item[:temperature] == "cool"}
end

def organize_schools(schools)
  organized_schools = {}
  binding.pry
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end

