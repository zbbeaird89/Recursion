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

def fib_rec(num, arr = [])
	arr << 0 if arr.empty?
	return arr << num if num < 2
	fib_rec(num - 1, arr) << (arr[arr.length - 1] + arr[arr.length - 2])
end

puts fib_rec(5)