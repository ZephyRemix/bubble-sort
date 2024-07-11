def swap(arr, i, j)
  arr[i], arr[j] = arr[j], arr[i]
end


def bubble_sort(num_arr)

  loop do
    # records swap footprint in each iteration
    # reset flag element to false after each loop
    elements_swapped = false

    num_arr.each_with_index do |val, i|
      # skip the final element
      next if i == num_arr.length - 1

      # if first value bigger than second value, swap values
      if num_arr[i] > num_arr[i+1]
        swap(num_arr, i, i + 1)
        elements_swapped = true
      end 

    end
    # end loop; no elements indicates sorted array
    break unless elements_swapped
  end
  num_arr
end


sorted_arr = bubble_sort([4,3,78,2,0,2])