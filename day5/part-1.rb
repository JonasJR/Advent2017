INPUT = File.read("input.txt")

total = 0

INPUT.each_line do |line|
	row = line.split(" ")
	temp = row.uniq
	if row.length == temp.length
		total += 1
	end
end

puts total
