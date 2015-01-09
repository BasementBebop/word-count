class String
  define_method(:word_count) do |word_to_count|
    total_instances = 0
    texts = self.split(" ")
    texts.each() do |text_word|
      if text_word == word_to_count
        total_instances += 1
      end
    end
    total_instances
  end
end
