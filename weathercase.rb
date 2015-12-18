puts "What's the weather like today?" 
weather = gets.chomp
case weather 
when "sunny"
	puts "The sun is bright, wear short sleeves!" 
when "rainy"
	puts "wear rain boots!" 
when "windy"
	puts "put on a wind breaker" 
when "anime"
	puts "time to henshin!"
else 
	puts "Well... I trust your judgement in this #{weather} weather" 
end
