def merge_sort(arr, i = 0, j = arr.length - 1, temp = [])
  m = (i + j) / 2
  # sort left
  merge_sort(arr, i, m, temp)

  # sort right
  merge_sort(arr, m + 1, j, temp)

  # merge arrays


end


def merge_arrays(arr, i, m, j, temp)
  k1 = i
  k2 = m + 1
  index = 0

  while k1 <= m && k2 <= j do
    if arr[k1] < arr[k2]
      temp[index] = arr[k1]
      k1 += 1
    else
      temp[index] = arr[k2]
      k2 += 1
    end
    index += 1
  end

  



end

def copy_array(from_arr, to_arr)

end


{1,2,7,5,3,7,82,1}