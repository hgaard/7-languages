def guess_number(guess, maxnum)
  magic_number = rand(maxnum)
  if(guess == magic_number)
    puts "You got it"
    return true
  else
    puts "Wrong - you guessed #{guess} - number was #{magic_number}"
    return false
  end
end

while guess_number(rand(10),10) != false
  puts 'guessing again'
end
