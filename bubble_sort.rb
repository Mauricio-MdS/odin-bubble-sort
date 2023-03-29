def bubble_sort(unsorted_array)
  sorted_array = unsorted_array
  0.upto(sorted_array.length - 2) do |passes|
    sorted = true
    0.upto(sorted_array.length - (2 + passes)) do |i| # The rightmost elements are already sorted with each pass
      if sorted_array[i] > sorted_array[i + 1]
        temp = sorted_array[i]
        sorted_array[i] = sorted_array[i + 1]
        sorted_array[i + 1] = temp
        sorted = false
      end
    end
    return sorted_array if sorted
  end
  sorted_array
end
