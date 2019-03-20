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
b,c = [],[]
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

  aff, zrt = [], []
  arr.each do |i|
  aff << i.values
  end

  aff = aff.sort_by{|i| i}.reverse!
  att = aff.flatten!

    i, b = 0, []
    while i < aff.length
    b << aff.count(aff[i])
    i+=1
    end

  b = b.uniq!


  arv =[]
  y = 0
        while y < b.length
        arv << [:count, b[y]]
        y+=1
  end

  att = att.uniq!
  k = []
  i = 0
  while i < att.length
  k << [:name, att[i]]
  i+=1
  end

  k
  arv
  t = []
  i=0
  while i < arv.length
  t << [arv[i], k[i]]
  i+=1
  end
  f=[]
  t.each do |i|
  f << i.to_h
  end
  f

end



def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|entry| entry if entry.has_value?("cool")}
end

def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end

def find_cool(cool)
  i,t = 0, []
  while i < cool.length
      if cool[i].values.include?("cool")
      t << cool[i]
      end
    i+=1
  end
  t
end
