def guess_number(guess, maxnum)
  magic_number = rand(maxnum)
  if(guess == magic_number)
    puts "You got it - the number was #{magic_number}"
    return true
  else
    puts "Wrong - you guessed #{guess} - number was #{magic_number}"
    return false
  end
end

i=0
while i<10
  guess_number(rand(10),10)
  i=i+1
end
