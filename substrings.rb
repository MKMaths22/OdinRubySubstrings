#As per the example in the Odin Lesson, I will assume that the matches are supposed to be case-insensitive
def substrings(words,dictionary)
    output_hash = {};
    dictionary.each do |item|
        matches = 0;
        stop_search = words.length - item.length;
        #this is the last index where the word <item> could start in <words>
        for i in (0..stop_search)
            if (words[i..i + item.length - 1].downcase == item.downcase)
                matches += 1;
            end
        end
        #if at least one match, add the key of item and value of matches to the output hash
        if (matches > 0)
            output_hash[item] = matches;
        end
    
    end
    return output_hash;
end

