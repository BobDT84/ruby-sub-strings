
def substrings(string, dictionary)
    regexp = /[A-Za-z]+/ 
    words = string.scan(regexp).map{|x| x.downcase}
    dictionary.reduce(Hash.new(0)) do |hash,word|
        words.each do |substring|
            if substring.include?(word)
                hash[word] += 1
            end
        end
        hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
value = substrings("Howdy partner, sit down! How's it going?789",dictionary)
# TOP example 
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
p value
# My Output
#=> {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}