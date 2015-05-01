require('rspec')
require('dictionary')
require('definition')
require('word')

describe('Word') do

  describe ('#new_word') do
    it("returns the name of the word") do
    test_word = Word.new("cat")
    expect(test_word.new_word()).to(eq("cat"))
    end
  end
end
