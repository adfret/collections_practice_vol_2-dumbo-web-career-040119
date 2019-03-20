def begins_with_r(arr)
arr.all?{|i| i[0] == "r"}
end

def contain_a(arr)
  b = []
arr.each do |i|
  if i.chars.include?("a")
    b << i
  end
end
b
end

def first_wa(arr)
arr.each do |i|
  if i[0..1] == "wa"
    return i
    break
  end
end

end


def remove_non_strings(arr)

arr.each do |i|
  if i.to_s != i
    b << i
  else
    c << i
  end
end

c

end


def count_elements(arr)


end



def merge_data(keys, data)

keys.merge!(data)

end


def organized_schools(schools)

  schools.sort_by{|i|i}
end


def find_cool(cool)
  b = ""
  cool.each do |i|
    b = i.values
  end

end
