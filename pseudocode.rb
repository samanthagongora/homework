=begin
tying your shoes
1. Place your shoe so that the toe faces away from you
2. Take the right shoelace in your right hand
3. Take your left shoelace in your left hand
4. Cross your right lace in front of your left to make an x
5. Wrap your right lace around your left once
6. Pull both laces until tight
7. Make a bight with your left lace
8. Repeat step 4
9. Wrap your right lace around your left bight, but only pull the right lace halfway through
10. Pull both loops tight
=end

Bad Connection:

How will you know when the problem is solved?
  When each input matches the requested output
How do you want to use the software?
  Terminal
What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
How do we achieve this goal?

def bad_connection
ready_to_quit = false
puts "HELLO, THIS IS A GROCERY STORE!"

input = gets.chomp
set goodbye counter to 0

until ready_to_quit
  check if input is empty
    yes, output "HELLO?!"
  else if no, check if input includes a "?"
    if yes, check if input.upcase equals input
      if yes, output "NO, THIS IS NOT A PET STORE"
    if input.upcase does not equal the input
      output "I AM HAVING A HARD TIME HEARING YOU."
  else if no, check if input equals goodbye
    increase goodbye counter
    if goodbye counter is 1
      output "ANYTHING ELSE I CAN HELP WITH?"
    else if goodbye counter is 2
      output "THANK YOU FOR CALLING!"
      set ready to quit variable to true to exit the loop
    end
  end
  get input
end

puts "THANK YOU FOR CALLING!"
