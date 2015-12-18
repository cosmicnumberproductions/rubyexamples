
def always_three(number)
    (((((number + 5) *2) - 4) / 2) - number)
end

puts "Give me a number!" 

userNumber = gets.to_i

puts "Always " + always_three(userNumber).to_s