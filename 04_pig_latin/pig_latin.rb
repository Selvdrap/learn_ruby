#write your code here
def translate(str)
  vowels = /[aeiouy]/i

  words = str.split(' ').map! do |word|
    punc_index = word.index(/[\W]/)
    punc = ''
    if(punc_index)
      punc = word[punc_index]
      word = word[0...punc_index]
    end

    cap = word[0] == word[0].capitalize
    word = word.downcase

    vowel_index = word.index(vowels)
    if word[vowel_index - 1..vowel_index] == "qu" 
      vowel_index = vowel_index + 1
    end
    if(vowel_index && vowel_index != 0)
      word = "#{word[vowel_index..-1]}#{word[0...vowel_index]}"
    end

    word = cap ? "#{word}ay#{punc}".capitalize : "#{word}ay#{punc}"
  end

  return words.join(" ")
end