f = File.open 'text.txt', 'r'

f.each_line do |line|
  puts line
end

f.close
