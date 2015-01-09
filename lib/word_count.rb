class String
  define_method(:word_count) do |word_to_count|
    total_instance = 0
    texts = self.downcase.split(" ")
    texts.each() do |text_word|
      if text_word == word_to_count
        total_instance += 1
      end
    end
    total_instance
  end
end
