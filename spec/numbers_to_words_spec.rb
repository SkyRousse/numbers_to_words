require ('rspec')
require ('numbers_to_words.rb')
require ('pry')

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
  it('returns a word for a number between 100 and 999') do
    expect("134".numbers_to_words()).to(eq("one hundred and thirty four"))
  end
  it('returns a word for a number between 100 and 999') do
    expect("113".numbers_to_words()).to(eq("one hundred and thirteen"))
  end
  it('returns a word for a number between 100 and 999') do
    expect("109".numbers_to_words()).to(eq("one hundred and nine"))
  end
  it('returns a word for a number between 1000 and 9999') do
    expect("1199".numbers_to_words()).to(eq("one thousand one hundred and ninety nine"))
  end
  it('returns a word for a number between 10000 and 99999') do
    expect("31199".numbers_to_words()).to(eq("thirty one thousand one hundred and ninety nine"))
  end
  it('returns a word for a number between 100000 and 999999') do
    expect("331199".numbers_to_words()).to(eq("three hundred and thirty one thousand one hundred and ninety nine"))
  end
  it('returns a word for a number between 1000000 and 9999999') do
    expect("3331199".numbers_to_words()).to(eq("three million three hundred and thirty one thousand one hundred and ninety nine"))
  end
end
