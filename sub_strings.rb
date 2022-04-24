def substrings(string, dictionary)
  regexp = /[A-Za-z]+/
  words = string.scan(regexp).map { |x| x.downcase }
  dictionary.each_with_object(Hash.new(0)) do |word, hash|
    words.each do |substring|
      hash[word] += 1 if substring.include?(word)
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
value = substrings("Howdy partner, sit down! How's it going?789", dictionary)
# TOP example
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
p value
# My Output
#=> {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
