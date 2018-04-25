INPUT = File.read("input.txt")
arr = INPUT.split("\n").map(&:to_i)

counter = 0
index = 0

while index < arr.length
  move = arr[index]
	if arr[index] >= 3
	  arr[index] -= 1
	else
		arr[index] += 1
	end
	index += move
	counter += 1
end

puts counter
