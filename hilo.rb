#!/usr/bin/env ruby

gameWon = false

randomNum = rand(100) + 1

puts "Welcome to a game of Ruby Hi-Lo 🤠"

puts "To win this game correctly guess the random number between 1 and 100"

puts "Make a guess:"

while !gameWon
  guessedNumber = gets.chomp.to_i

  if guessedNumber > randomNum then
    puts "☹️ That number is too high - try again with a lower number 👇"
  elsif guessedNumber < randomNum then
    puts "☹️ That number is too low - try again with a higher number 👆"
  else
    puts "💫 ✨ Congratulations! You successfully guessed the correct number! ✨ 💫"
    gameWon = true
  end
end
