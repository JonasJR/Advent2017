INPUT = File.read("input.txt")

total = 0

INPUT.each_line do |line|
	row = line.split(" ")
	sorted = []
  row.each { |word| sorted.push(word.chars.sort.join) }
	temp = sorted.uniq
	if sorted.length == temp.length
		total += 1
	end
end

puts total
