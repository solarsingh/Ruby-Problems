def cipher(message, key)
    ascii_array = []
    string = []
    i = 0

    message.each_byte do |c|
        ascii_array[i] = c
        i+=1
    end

    j = 0

    ascii_array.each do |code|
        
        if (65..90).include?code
            letter = code + key.to_i

            if (65..90).include?letter
                ascii_array[j]=letter.chr
            elsif (91..117).include?letter
                ascii_array[j] = ((letter-90)+64).chr
            elsif (39..64).include?letter
                ascii_array[j] = (91-(65-letter)).chr
            end
            
        elsif (97..122).include?code
            letter = code + key.to_i
            
            if (97..122).include?letter
                ascii_array[j]=letter.chr
            elsif (123..140).include?letter
                ascii_array[j] = ((letter-122)+96).chr
            elsif (71..96).include?letter
                ascii_array[j] = (123-(97-letter)).chr
            end
        end

        j+=1
    
    end

    return ascii_array.join() 
end

    
puts "Give us a message to encode"
message = gets.chomp
puts "Key value for this cipher?"
key = gets.chomp
puts cipher(message, key)