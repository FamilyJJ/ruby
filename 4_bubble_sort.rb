=begin
Build a method #bubble_sort that takes an array and returns a sorted array. 
It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
Expected return => [0,2,2,3,4,78]
=end

def bubble_sort(array)
  (array.length.-1).times do
    array.take(array.length-1).each_with_index do |number, index|
      if array[index] > array[index+1] 
      array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  end
  array
end

puts bubble_sort([4,3,78,2,0,2])
