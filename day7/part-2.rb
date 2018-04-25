#!/usr/bin/ruby
class Program
   def initialize(name, weight)
      @prog_weigth = weight
      @prog_name = name
      @prog_children = []
   end
   def name()
     return @prog_name
   end
   def childrenWeight
     return childrenWeight
   end
   def isBalanced
     return sjdf
   end
end

input = File.read("input.txt")

programs = {}

input.each_line do |line|
  arr = line.tr(',()>-','').split(" ")
  programs[arr[0]] = Program.new(arr[0],arr[1])

  if arr.select{ |program| programs.include?("->")}.each{ |child| }
end
yell.each do |item|
  if !ontop.include? item.name
    puts item.name
    break
  end
end
