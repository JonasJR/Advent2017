INPUT = File.read("input.txt")

banks = INPUT.split(" ").map(&:to_i)

configurations = {}

steps = 0

until configurations[banks]
  configurations[banks] = steps

  idx = banks.index(banks.max)

  blocks = banks[idx]
  banks[idx] = 0

  blocks.times do |i|
    banks[(idx + i + 1) % banks.length] += 1
  end

  steps += 1
end

# Part 1
puts steps

# Part 2
puts steps - configurations[banks]
