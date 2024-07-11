
def bubble_sort(num_arr)

  loop do
    # reset flag to false
    elements_swapped = false

    num_arr.each_with_index do |val, i|
      # if first value bigger than second value, swap values
      next if i == num_arr.length - 1
      case num_arr[i] <=> num_arr[i+1] 
      when 1
        num_arr[i] = num_arr[i+1]
        num_arr[i+1] = val 
        elements_swapped = true
      end
    end 
    # binding.pry
    break unless elements_swapped
  end
  
  num_arr
end


def swap_elements(x, y)
  x,y= y,x
end


sorted_arr = bubble_sort([4,3,78,2,0,2])
p sorted_arr