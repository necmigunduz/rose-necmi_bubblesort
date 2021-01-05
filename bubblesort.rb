def bubble_sort(arr)
  len = arr.length - 1
  while len
    unsorted = false
    (0...len).each do |i|
      if arr[i] > arr[i + 1]
        arr[i + 1], arr[i] = arr[i], arr[i + 1]
        unsorted = true
      end
    end
    break if unsorted == false end
  arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
