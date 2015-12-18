class Pet
    
    attr_accessor :name, :owner
    
end

class Puppy < Pet
    def sound
        return "Bark" 
    end
end

my_puppy = Puppy.new
my_puppy.name = 'Kiki'
my_puppy.owner = 'Misha'
puts "Hello, my name is #{my_puppy.owner} and my dog's name is #{my_puppy.name}. My dog goes #{my_puppy.sound}!"

    
    