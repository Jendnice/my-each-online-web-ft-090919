#def my_each # put argument(s) here
  # code here
#end

def my_each(["a", "b", "c"]) do |i| 
  puts "#{i}"
  end 
  yield 
end

array = ["a", "b", "c"] 
my_each(array)

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

def hello_t(array)
  i = 0
 
  while i < array.length
    yield array[i]
    i = i + 1
  end
end

Here, we use the bracket ([]) method to grab the value of each successive index element as we proceed through our while loop, yielding each to a block. Now we're ready to call our method.

Step 4: Calling our method
Let's call our method, passing in the following array as an argument:

["Tim", "Tom", "Jim"]
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

