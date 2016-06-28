require ('rspec')
require ('numbers_to_words.rb')

describe('Fixnum#numbers_to_words') do
  it('returns a word for a single digit number') do
    expect(1.numbers_to_words()).to(eq("one"))
  end
end
