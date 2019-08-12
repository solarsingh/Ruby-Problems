def substrings(search, dictionary)
    len = search.length
    result = {}
    for i in 0..(len-1) do
        substr = search.slice(i..len)
        len2 = substr.length
        
        for j in 0..(len2-1) do
            substr2 = substr.slice(0..j)
            occurance = 0
            dictionary.each do |check|
                if (substr2 ==  check)
                    occurance+=1
                end
            end
            
            if (occurance>0)
                result[substr2] = occurance
            end
        end
    end

    puts result
end

search = "Howdy partner, sit down! How's it going?"
search = search.downcase
search.gsub(/[^a-z ]/, '')
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings(search , dictionary)