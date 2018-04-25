INPUT = File.read("input.txt")

total = 0

INPUT.each_line do |line|
	row = line.split("\t").map(&:to_i)
	row.detect do |i|
		divisor = row.detect {|j| i != j && i % j == 0}
		if divisor != nil
		  break (total += i/divisor)
	  end
	end
end

puts total
