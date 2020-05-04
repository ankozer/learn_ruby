VOWELS=%w(e u i o a)
PIG_SCREAM="ay"

def translate(sentence)
  sentence.split(' ').map do |word|
    compose_pig_latin_word(word)
  end.join(" ")
end

# Helpers

def compose_pig_latin_word(word)
  word_start(word) + word_end(word) + PIG_SCREAM
end

def word_start(word)
  return word if start_with_vowel?(word)

  drop_qu(rest_without_first_consonants(word))
end

def word_end(word)
  return "" if start_with_vowel?(word)
  
  first_consonants(word) + add_qu(word)
end

def vowel?(letter)
  VOWELS.include?(letter)
end

def consonant?(letter)
  !vowel?(letter) && letter != "q"
end

def qu?(word)
  word.start_with?("qu")
end

def start_with_vowel?(word)
  vowel?(first(word))
end

def start_with_consonant?(word)
  !start_with_vowel?(word)
end

def first(word)
  word[0]
end

def first_consonants(word)
  word.split('').take_while { |letter| consonant?(letter) }.join
end

def rest(word)
  word[1..-1]
end

def word_without_qu(word)
  word[2..-1]
end

def rest_without_first_consonants(word)
  word.split('').drop_while { |letter| consonant?(letter) }.join
end

def drop_qu(word)
  return word_without_qu(word) if qu?(word)

  word
end

def add_qu(word)
  return "qu" if qu?(rest_without_first_consonants(word))

  ""
end