#!/usr/bin/env ruby

puts "Welcome to a game of Ruby Hi-Lo 🤠"
puts "To win this game correctly guess the random number between 1 and 100"
puts "You have 6 lives"
puts "Make a guess:"

currentGame = true
lives = 6
randomNum = rand(1..100)

puts "RANDNUM IS #{randomNum}"

while currentGame
  guessedNumber = Integer(gets.chomp)

  if guessedNumber == randomNum
    puts "💫 ✨ Congratulations! You successfully guessed the correct number! ✨ 💫"
    currentGame = false
  else
    lives -= 1

    if lives > 0
      puts "You have #{lives} lives remaining. Guess again:"
    else
      puts "💀 💀 💀 Game lost. You have run out of lives 💀 💀 💀"
      puts "The number was: #{randomNum}"
      currentGame = false
    end
  end

  begin
    if guessedNumber > randomNum && lives > 0
      puts "☹️ That number is too high - try again with a lower number 👇"
    elsif guessedNumber < randomNum && lives > 0
      puts "☹️ That number is too low - try again with a higher number 👆"
    end
  rescue ArgumentError
    # this don't work
    puts "Must be a valid number - do not include letters or special characters."
    puts "Try again:"
  end
end
