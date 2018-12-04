puts "Enter your username:"
username = gets.chomp

puts "Welcome #{username} to this wonderful game !!!"
HANDS = ['paper', 'stole', 'scissor']
puts "Please, make your choice: #{HANDS}"
your_choice = gets.chomp
ia_choice = HANDS.sample

loop do
  break if (your_choice == 'paper') || (your_choice == 'stole') || (your_choice == 'scissor')
  !HANDS.include?(your_choice)
  puts "Sorry, it's not a good choice, please choose one:"
  your_choice = gets.chomp
end
if your_choice == ia_choice
  puts 'Draw'
elsif (your_choice == 'paper' && ia_choice == 'stole') || (your_choice == 'stole' && ia_choice == 'scissor') || (your_choice == 'scissor' && ia_choice == 'paper')
  puts ia_choice
  puts 'Well... You are the winner... Well done !'
else
  puts ia_choice
  puts 'Sorry you are a big looser !! Aha'
end

sleep(2)

puts "Your hand is #{your_choice} and IA's choice is #{ia_choice}"
puts "Thanks to have played. See you later !"
