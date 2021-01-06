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
    break unless unsorted
  end
  arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(arr)
  raise "No block detected!" unless block_given?

  len = arr.length - 1
  while len
    unsorted = false
    (0...len).each do |i|
      if yield(arr[i], arr[i + 1]).to_i >= 0
        arr[i + 1], arr[i] = arr[i], arr[i + 1]
        unsorted = true
      end
    end
    break unless unsorted
  end
  puts arr
end

bubble = bubble_sort_by(%w[hello hey hi]) do |left, right|
  left.length - right.length
end

bubble
