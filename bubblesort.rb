def arr_sort(arr)
  len = arr.length - 1
  unsorted = true
  while len
    unsorted = false
    i = 0
    for i in 0...len
      if arr[i] > arr[i + 1]
        arr[i + 1], arr[i] = arr[i], arr[i + 1]
        unsorted = true
      end
    end
    break if unsorted == false end
  arr
    end

puts arr_sort([4, 3, 78, 2, 0, 2])
