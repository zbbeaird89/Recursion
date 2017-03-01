def fib(num)
	arr = []
	num.times do 
		if arr.empty?
			arr.push(0)
		elsif arr.length < 2
			arr.push(1)
		else
			arr.push(arr[arr.length - 1] + arr[arr.length - 2])
		end
	end
	return arr
end
