require('rspec')
require('dictionary')
require('word')
require('definition')

describe('Dictionary') do

  describe('#define') do
   it('returns the definition of a word') do
     test_word = Definition.new("test_word is a Ruby argument")
     expect(test_word.define()).to(eq("test_word is a Ruby argument"))
   end
 end
 end
