require ('rspec')
require ('numbers_to_words.rb')

describe('String#numbers_to_words') do
  it('returns a word for a single digit number') do
    expect("1".numbers_to_words()).to(eq("one"))
  end
  it('returns a word for a number between 10 and twenty') do
    expect("13".numbers_to_words()).to(eq("thirteen"))
  end
  it('returns a word for a number between 21 and 99') do
    expect("34".numbers_to_words()).to(eq("thirty four"))
  end
end
