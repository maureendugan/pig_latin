require('./pig_latin')

while true
  puts "Enter a phrase to translate"
  input = gets.chomp
  if input == '\quit'
    exit
  else
    puts "#{pig_latin(input)}"
  end
end
