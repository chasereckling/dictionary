require('rspec')
require('dictionary')
require('definition')
require('word')

describe('Word') do
  before() do
    Word.clear()
  end

  describe ('#new_word') do
    it("returns the name of the word") do
    test_word = Word.new("cat")
    expect(test_word.new_word()).to(eq("cat"))
    end
  end
  describe('#save') do
    it('adds a word to the array of saved words') do
      test_word = Word.new("cat")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('#id') do
    it("returns the id of the word") do
      test_word = Word.new("cat")
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('#add_definition') do
    it("adds a new definitionto a word") do
      test_word = Word.new("cat")
      test_definition = Definition.new("fuzzy little creature")
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end

   describe('.all') do
     it("is an empty array at first") do
       expect(Word.all()).to(eq([]))
     end
   end

   describe('.clear') do
     it ("deletes all of the saved words") do
       Word.new("cat").save()
       Word.clear()
       expect(Word.all()).to(eq([]))
     end
   end

   describe('.find') do
     it("returns a word by its id number") do
       test_word = Word.new("cat")
       test_word.save()
       test_word2 = Word.new("cat")
       test_word2.save()
       expect(Word.find(test_word.id())).to(eq(test_word))
     end
   end
end
