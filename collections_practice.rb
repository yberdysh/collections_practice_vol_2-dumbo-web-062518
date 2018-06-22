
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
	final_array.uniq
end

# def merge_data(keys, data)
# 	new_arr = []
# 	keys.map do |item|
# 		data.map do |datum|
# 			new_obj = {:first_name }
# 		end
# 	end
# 	new_arr
# end

def find_cool(arr)
	arr.find_all{|item| item[:temperature] == "cool"}
end

def organize_schools(arr)
	
end