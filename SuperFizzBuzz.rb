
0.upto(100) do |x|
  if x % 3 == 0 && x % 5 == 0 && x % 7 == 0
    puts 'SuperFizzBuzz'
  elsif x % 3 == 0 && x % 7 == 0
    puts 'SuperFizz'
  elsif x % 5 == 0 && x % 7 == 0
    puts 'SuperBuzz'
  elsif x % 3 == 0 && x % 5 == 0
    puts 'FizzBuzz'
  elsif x % 3 == 0
    puts 'Fizz'
  elsif x % 5 == 0
    puts 'Buzz'
  elsif x % 7 == 0
    puts 'Super'
  else
    puts x
  end
end

0.upto(1000) do |x|
  string = ''
  string << 'Super' if x % 7 == 0
  string << 'Fizz' if x % 3 == 0
  string << 'Buzz' if x % 5 == 0
  if string.empty?
    puts x
  else
    puts string
  end
end
