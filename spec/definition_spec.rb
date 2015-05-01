require('rspec')
require('dictionary')
require('definition')

describe('Definition') do
  before() do
    Definition.clear()
  end

  describe('#define') do
   it('returns the definition of a word') do
     test_word = Definition.new("test_word is a Ruby argument")
     expect(test_word.define()).to(eq("test_word is a Ruby argument"))
   end
 end

describe('#save') do
  it('adds a definition to the array of saved definitions') do
    test_word = Definition.new("test_word is a Ruby argument")
    test_word.save()
    expect(Definition.all()).to(eq([test_word]))
  end
end

describe('#id') do
  it("returns the id of the definition") do
    test_word = Definition.new("test_word is a Ruby argument")
    test_word.save()
    expect(test_word.id()).to(eq(1))
  end
end

 describe('.all') do
   it("is an empty array at first") do
     expect(Definition.all()).to(eq([]))
   end
 end

 describe('.clear') do
   it ("deletes all of the saved definitions") do
     Definition.new("test_word is a Ruby argument").save()
     Definition.clear()
     expect(Definition.all()).to(eq([]))
   end
 end

 describe('.find') do
   it("returns a definition by its id number") do
     test_word = Definition.new("test_word is a Ruby argument")
     test_word.save()
     test_word2 = Definition.new("test_word2 is a Ruby argument")
     test_word2.save()
     expect(Definition.find(test_word.id())).to(eq(test_word))
   end
 end

 end
