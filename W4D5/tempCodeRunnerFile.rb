def largest_contiguous_subsum(list)
  largest_sum = list.first
  current_sum = list.first
  (0..arr.length).each do |i|
    current_sum += arr[i]
    if current_sum > largest_sum
      largest_sum = current_sum
    end
  end

  return largest_sum
end
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)