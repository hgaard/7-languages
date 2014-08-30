#Read a file and print to console
File.open("day-2.rb","r"){|file| puts file.read}

# Print array of 16  in blocks of 4, using just each
a = (1..16)
a.each{|i|
  print i,","
  if i%4==0
    print "\n"
  end
}

# Print array of 16  in blocks of 4, using each_slica
a = (1..16)
a.each_slice(4){|s| p s}
