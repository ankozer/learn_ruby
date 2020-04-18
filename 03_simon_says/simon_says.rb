LITTLE_WORDS = %w(
  and as but for if nor or so yet a an the at by in of off on per to up via over
)

def echo(what)
  what
end

def shout(what)
  what.upcase
end

def repeat (what, count=2)
  ((what + " " ) * (count - 1)) + what
end    

def start_of_word (what, count)
  what[0, count]
end

def first_word (what)
  what.partition(" ").first
end

def titleize (text)
  words = text.split
  
  capitalized_words = words.map do |w|
    next w if LITTLE_WORDS.include?(w)
    
    w.capitalize
  end

  capitalized_words[0] = capitalized_words[0].capitalize
  capitalized_words.join(' ')
end