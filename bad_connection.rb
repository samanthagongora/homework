
def bad_connection(input)
  ready_to_quit = false
  goodbye = 1

  until ready_to_quit
    if input.empty?
      puts 'HELLO?!'
    elsif input.include? '?'
      question(input)
    elsif input == 'goodbye'
      if goodbye == 1
        puts 'ANYTHING ELSE I CAN HELP WITH?'
      elsif goodbye == 2
        ready_to_quit = true
      end
      goodbye += 1
    end

    input = gets.chomp unless goodbye == 2

  end
  puts 'THANK YOU FOR CALLING!'
end

def question(input)
  if input.upcase == input
    puts 'NO, THIS IS NOT A PET STORE'
  else
    puts 'I AM HAVING A HARD TIME HEARING YOU.'
  end
end

puts 'HELLO, THIS IS A GROCERY STORE!'

input = gets.chomp

bad_connection(input)
