# bubble_sort.rb

def swap(arr, i, j)
  arr[i], arr[j] = arr[j], arr[i]
end

def bubble_sort(num_arr)
  n = num_arr.length

  loop do
    elements_swapped = false

    (0...n-1).each do |i|
      if num_arr[i] > num_arr[i + 1]
        swap(num_arr, i, i + 1)
        elements_swapped = true
      end
    end

    break unless elements_swapped
  end

  num_arr
end

sorted_arr = bubble_sort([4, 3, 78, 2, 0, 2])
puts sorted_arr.inspect