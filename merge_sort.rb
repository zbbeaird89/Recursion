def merge_sort(arr)

	return arr if arr.length == 1

	a = merge_sort(arr[0...arr.length / 2])
	b = merge_sort(arr[arr.length / 2...arr.length])

	return merge_arrs(a, b)
end

def merge_arrs(a, b)

	c = [] 

	while a.length >= 1 && b.length >= 1
		if a[0] < b[0]
			c.push(a[0])
			a.delete_at(0)
		else
			c.push(b[0])
			b.delete_at(0)
		end
	end

	while a.length >= 1
		c.push(a[0])
		a.delete_at(0)
	end

	while b.length >= 1
		c.push(b[0])
		b.delete_at(0)
	end

	return c

end

arr = [5, 4, 6, 2, 3, 1, 10, 8, 9, 7]
puts merge_sort(arr)