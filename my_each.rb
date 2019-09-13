#def my_each # put argument(s) here
  # code here
#end
def my_each(array)
  i = 0
  
  while i < array.length
    yield array[i]
    i = i + 1 
  end
end

["aa", "ab", "ac"]
my_each(["aa", "ab", "ac"]) do |letters|
  if letters.start_with?("a")
    puts letters
  end 
end 









  