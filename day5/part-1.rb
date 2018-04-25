INPUT = File.read("input.txt")
arr = INPUT.split("\n").map(&:to_i)

counter = 0
index = 0

while index < arr.length
  move = arr[index]
	arr[index] += 1
	index += move
	counter += 1
end

puts counter
