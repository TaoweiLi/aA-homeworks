# Big O - ctopus and Biggest Fish:

# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to 
# all other fish lengths

def sluggish_octopus(arr)
  (0...arr.length).each do |i|
    ele1 = arr[i]
    check = true
    (0...arr.length).each do |j|
      ele2 = arr[j]
      if ele2.length > ele1.length
        check = false
      end
    end
    if check == true
    return ele1
    end
  end

  return nil
end

# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that 
# runs in O(n log n) in the sorting complexity demo from the Sorting Complexity reading. 
# Remember that Big O is classified by the dominant term.

def sorted_Octopus(arr)
  pivot_arr = arr[0]
  left = arr[1..-1].select { |ele| ele < arr[0] }
  right = arr[1..-1].select { |ele| ele >= arr[0]}

  return dominant_octopus(left) + pivot_arr + dominant_octopus(right)
end

def dominant_octopus(arr)
  sorted_arr = sorted_Octopus(arr)
  return sorted_arr[-1]
end

# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest 
# fish that you have found so far while stepping through the array only once.

def clever_octopus(arr)
  longest = nil

  arr.each do |ele|
    if longest == nil || ele.length > longest
      longest = ele.length
    end
  end

  return longest
end


