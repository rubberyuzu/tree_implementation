def binary_search(arr, value, from=0, to)
	mid = (from+to)/2 # in ruby, this will be always integer
	case 
		when arr[mid] > value
			binary_search(arr, value, from, mid-1)
		when arr[mid] < value
			binary_search(arr, value, mid+1, to)
		else
			mid
	end
end

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
p a
p binary_search(a, 3, 0, 14)