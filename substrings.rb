def substrings (word, dictionary = [])

    substrings = Hash.new(0)
    word = word.downcase.split(' ')

    word.each do | words |

        dictionary.each do | substring |
          if  words.include?(substring)
            substrings[substring] += 1
          end
        end

    end

    return "No results for '#{word.join('')}' on your dictionary" if substrings.empty?
    return substrings
end

    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    p substrings("Howdy partner, sit down! How's it going?", dictionary)
    #=> {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
