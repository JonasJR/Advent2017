INPUT = File.read("input.txt")

total = 0

INPUT.each_line do |line|
	row = line.split("\t").map(&:to_i)
	high = 0
	low = 99999
	row.each do |number|
		if number < low
			low = number
		end
		if number > high
			high = number
		end
	end
	total += high - low
end

puts total
