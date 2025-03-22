def bubble_sort(arr)
  i = 0
  sorted_arr = []
  goal_len = arr.length 
  while i < arr.length - 1
    if arr[i] > arr[i+1]
      holder = arr[i]
      arr[i] = arr[i+1]
      arr[i+1] = holder
    end
    i += 1
    if i == arr.length - 1 && sorted_arr.length != goal_len
      sorted_arr << arr[i]
      arr.pop
      i = 0
    end
  end
  sorted_arr << arr[0]
  sorted_arr.reverse
end

sorted_arr = bubble_sort([4,3,78,2,0,2])
p sorted_arr
