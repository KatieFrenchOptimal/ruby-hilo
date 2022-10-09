#!/usr/bin/env ruby

gameWon = false
lives = 6
randomNum = rand(1..100)

puts "Welcome to a game of Ruby Hi-Lo 🤠"
puts "To win this game correctly guess the random number between 1 and 100"
puts "You have 6 lives"
puts "Make a guess:"

while !gameWon
  guessedNumber = gets.chomp.to_i
  outOfRangeNum = guessedNumber < 1 || guessedNumber > 100

  remainingLivesMessage = "You have #{lives} lives remaining. Guess again:"
  gameOverMessage = "💀 💀 💀 Game lost. You have run out of lives 💀 💀 💀"

  if guessedNumber > randomNum && !outOfRangeNum
    lives -= 1

    if lives == 0
      puts gameOverMessage
      break
    else
      puts "☹️ That number is too high - try again with a lower number 👇"
      puts remainingLivesMessage
    end
  elsif guessedNumber < randomNum && !outOfRangeNum
    lives -= 1

    if lives == 0
      puts gameOverMessage
      break
    else
      puts "☹️ That number is too low - try again with a higher number 👆"
      puts remainingLivesMessage
    end
  elsif outOfRangeNum
    puts "Uh oh - you have guessed a number out of range."
    puts "Make sure your guess is in the range of 1 - 100. Try again:"
  else
    puts "💫 ✨ Congratulations! You successfully guessed the correct number! ✨ 💫"
    gameWon = true
  end
end
