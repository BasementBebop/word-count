class String
  define_method(:word_count) do |word_to_count|
    total_instance = 0
    text_nosymb = self.gsub(/[.;:,!?]/," ")
    text_nosymb.downcase.split(" ").each() do |text_word|
      if text_word == word_to_count
        total_instance += 1
      end
    end
    total_instance
  end
end
