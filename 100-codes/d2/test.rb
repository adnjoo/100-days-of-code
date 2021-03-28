# 01,03,05,07,08,10,12 has 31 days
# 04,06,09,11 has 30 days
# 02 has 28 days; except leap year it has 29 days

arr1 = ["01-01-21"]

def add_day (arr)
day = arr[0][3..4].to_i
if day < 9
  return add_one(arr)
elsif day == 9
  arr[0][3..4] = "10"
  return arr
elsif day < 19
  return add_one(arr)
elsif day == 19
  arr[0][3..4] = "20"
  return arr
elsif day < 29
  return add_one(arr)
elsif day == 29
  arr[0][3..4] = "30"
  return arr
elsif day < 31
  arr[0][3..4] = "3" + (arr[0][4].to_i + 1).to_s
  return arr
elsif day == 31
  arr[0][0..1] = "0" + (arr[0][1].to_i + 1).to_s
  arr[0][3..4] = "01"
  return arr
end
end

def add_one (array)
  array[0][3..4] = array[0][3] + (array[0][4].to_i + 1).to_s
  return array
end

60.times do |x|
  p add_day(arr1)
end



#refactor

#
# if day < 9 19 29
#   arr bla bla = char 3
