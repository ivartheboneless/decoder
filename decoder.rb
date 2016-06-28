#The following arrays contain the corresponding letters
#For now, 'q' and 'x' have been omitted for simplicity
two = ['a', 'b', 'c']
three = ['d', 'e', 'f']
four = ['g', 'h', 'i']
five = ['j', 'k', 'l']
six = ['m', 'n', 'o']
seven = ['p', 'r', 's']
eight = ['t', 'u', 'v']
nine = ['w', 'y', 'z']

print "\nPlease enter the number you would like to decode: "
number_entered = gets
puts "You entered #{number_entered}\n"

dummy_array = number_entered.split("")

array = Array.new(dummy_array.size - 1)

i = 0
while i < array.size
  array[i] = dummy_array[i]
  i += 1
end

i = 0
array.each do |letter|
  if letter == '2'
    array[i] = two
  elsif letter == '3'
    array[i] = three
  elsif letter == '4'
    array[i] = four
  elsif letter == '5'
    array[i] = five
  elsif letter == '6'
    array[i] = six
  elsif letter == '7'
    array[i] = seven
  elsif letter == '8'
    array[i] = eight
  elsif letter == '9'
    array[i] = nine
  else
    puts "Invalid Entry. Please try again"
    break
    exit
  end
  i += 1
end

array.each do |set|
  print set
  print "\n"
end

final = Array.new
keys = Array.new(array.size, 0)
size = keys.size - 1
loop do
  final.push keys.to_s
  #print "\n #{keys}"
  keys[size] += 1
  i = 0
  while (keys[size - i] == 3)
    if i > size
      break
    end
    keys[size - i] = 0
    keys[size - (i+1)] +=1
    i += 1
  end
  if i > size
    break
  end
end

final = eval final.to_s.gsub('"', '')
#print "\n #{final}\n"


x = 0
while x < final.size
  y = 0
  array.each do |combo|
    index = final[x][y]
    print combo[index.to_i]
    y += 1 #determines the letter
  end
  print "\n"
  x += 1 #determines the combination
end
