input_data = STDIN.read.split.map(&:to_i)

if input_data.length >= 2
  a = input_data[0]
  b = input_data[1]
  puts a + b
else
  exit(1)
end
