#!/usr/bin/env ruby

file_path = File.expand_path("../input.txt", __FILE__)
input     = File.read(file_path)

digits = input.chars

#digits << digits.first

puts digits
