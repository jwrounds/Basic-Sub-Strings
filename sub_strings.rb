dictionary = ["gate", "fate", "hair", "fore", "live", "pic", "pal", "fowl", "gown", "grown", "oar", "floor", "tear", "in", "end", "i", "by", "one", "bone", "run", "ton", "ask", "man", "bin", "lint", "art", "par", "air", "cart", "use", "you", "to", "hun", "oil", "fare", "chin", "he", "her", "be", "sea", "ill"]

def sub_string(string, dictionary)
  str_arr = string.split(" ")
  str_arr.reduce(Hash.new(0)) do |sub_hash, str_word|
    dictionary.each do |dict_word|
      if str_word.downcase.include?(dict_word)
        sub_hash[dict_word] += 1
      end
    end
    sub_hash
  end
end

p sub_string("fart in my best pants and I'll give you a boar", dictionary)