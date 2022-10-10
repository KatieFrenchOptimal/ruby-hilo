#!/usr/bin/env ruby

gameInProgress = true
lives = 6
randomNumber = rand(1..100)

puts "Welcome to a game of Ruby Hi-Lo 🤠"
puts "To win this game correctly guess the random number between 1 and 100"
puts "You have 6 lives"

while gameInProgress
  puts "Make a guess:"

  guessedNumber = gets.chomp

  unless guessedNumber =~ /^[1-9][0-9]?$/
    puts "Input is invalid - please provide a number between 1 and 100."
    next
  end

  if guessedNumber.to_i == randomNumber
    puts "💫 ✨ Congratulations! You successfully guessed the correct number! ✨ 💫"
    break
  end

  lives -= 1

  if lives === 0
    puts "💀 💀 💀 Game lost. You have run out of lives 💀 💀 💀"
    puts "The secret number was: #{randomNumber}"
    break
  end

  if guessedNumber.to_i > randomNumber && lives > 0
    puts "Too high - try again with a lower number."
  else
    puts "Too low - try again with a higher number."
  end

  puts "You have #{lives} lives left."
end
