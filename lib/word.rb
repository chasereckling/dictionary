class Word

  define_method(:initialize) do |new_word|
    @new_word = new_word
  end

  define_method(:new_word) do
    @new_word
  end
end
