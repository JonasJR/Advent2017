#!/usr/bin/ruby
class Program
   def initialize(name, weight)
      @prog_weigth = weight
      @prog_name = name
   end
   def name()
     return @prog_name
   end
   def weight()
     return @prog_weigth
   end
end

INPUT = File.read("input.txt")

yell = []
ontop = []

INPUT.each_line do |line|
  arr = line.tr(',()>-','').split(" ")
  yell.push(Program.new(arr[0],arr[1]))
  arr.shift
  arr.each do |val|
    ontop.push(val)
  end
end
yell.each do |item|
  if !ontop.include? item.name
    puts item.name
    break
  end
end
