require('rspec')
require('dictionary')
require('word')
require('definition')

describe('Definition') do

  describe('#define') do
   it('returns the definition of a word') do
     test_word = Definition.new("test_word is a Ruby argument")
     expect(test_word.define()).to(eq("test_word is a Ruby argument"))
   end
 end

 describe('.all') do
   it("is an empty array at first") do
     expect(Definition.all()).to(eq([]))
   end
 end

 # describe('#save') do
 #   it('adds a definition to the array of saved definitions') do
 #     test_word = Definition.new("test_word is a Ruby argument")
 #     expect(Definition.all()).to(eq([test_word]))
 #   end
 # end
 end
