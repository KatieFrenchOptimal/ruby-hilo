#!/usr/bin/env ruby

gameWon = false
lives = 6
randomNum = rand(100) + 1

puts "Welcome to a game of Ruby Hi-Lo 🤠"
puts "To win this game correctly guess the random number between 1 and 100"
puts "You have 6 lives"
puts "Make a guess:"

while !gameWon
  guessedNumber = gets.chomp.to_i

  if guessedNumber > randomNum then
    lives -= 1

    if lives === 0 then
      puts "💀 💀 💀 Game lost. You have run out of lives 💀 💀 💀"
      break
    else
      puts "☹️ That number is too high - try again with a lower number 👇"
      puts "You have #{lives} lives remaining. Guess again:"
    end
  elsif guessedNumber < randomNum then
    lives -= 1

    if lives === 0 then
      puts "💀 💀 💀 Game lost. You have run out of lives 💀 💀 💀"
      break
    else
      puts "☹️ That number is too low - try again with a higher number 👆"
      puts "You have #{lives} lives remaining. Guess again:"
    end
  else
    puts "💫 ✨ Congratulations! You successfully guessed the correct number! ✨ 💫"
    gameWon = true
  end
end
