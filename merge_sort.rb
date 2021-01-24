def merge_sort(arr)
  if arr.length < 2
    arr
  else
    left_half = merge_sort(split_array(arr).first)
    right_half = merge_sort(split_array(arr).last)
    merge_array(left_half, right_half)
  end
end

def split_array(arr)
  [arr[0...(arr.length / 2)], arr[(arr.length / 2)...arr.length]]
end

def merge_array(left_half, right_half)
  result = []
  while !left_half.empty? && !right_half.empty?
    if left_half.first < right_half.first
      result.push(left_half.shift)
    else
      result.push(right_half.shift)
    end
  end
  result.push(*left_half, *right_half)
  result
end
