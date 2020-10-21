#!/usr/bin/ruby

=begin

This example shows how to count the number of lines in a file in ruby.

References:
- http://www.java2s.com/example/ruby-book/count-text-file-line.html

=end

text='' 
line_count = 0
File.open('/etc/passwd').each do |line|  
  line_count += 1 
  text << line 
end

puts "#{line_count} lines"
