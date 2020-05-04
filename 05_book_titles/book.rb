class Book
  LITTLE_WORDS = %w(
    and as but for if nor or so yet a an the at by in of off on per to up via over
  )

  attr_reader :title

  def title=(title_str)
    @title = titleize(title_str)
  end

  private

  def titleize (text)
    words = text.split

    capitalized_words = words.map do |w|
      next w if LITTLE_WORDS.include?(w)

      w.capitalize
    end

    capitalized_words[0] = capitalized_words[0].capitalize
    capitalized_words.join(' ')
  end
end
