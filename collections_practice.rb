require 'pry'

def sort_array_asc(integer_array)
  integer_array.sort
end

def sort_array_desc(integer_array)
  integer_array.sort.reverse
end

def sort_array_char_count(string_array)
  string_array.sort do |a,b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  array.insert(1, array.delete_at(2))
end

def reverse_array(integer_array)
  integer_array.reverse
end

def kesha_maker(string_array)
  new_array = []
  string_array.each do |string|
    new_array << string.sub(string[2], '$')
  end
  new_array
end

def find_a(string_array)
  string_array.select do |string|
    string.start_with?("a")
  end
end

def sum_array(integer_array)
  integer_array.inject do |sum, integer|
    sum + integer
  end
end

def add_s(string_array)
  string_array.each_with_index.collect do |string,index|
    if index == 1
      string
    else
      string << 's'
    end
  end
end
