puts "How are you feeling? Good or bad?" 

feeling = gets.chomp

while feeling.downcase == "good" 
    puts "I love you!\n How are you feeling now? Good or bad?" 
    feeling = gets.chomp.downcase
end