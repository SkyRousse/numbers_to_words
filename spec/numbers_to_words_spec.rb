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
    expect("134".numbers_to_words()).to(eq("one hundred thirty four"))
  end
  it('returns a word for a number between 100 and 999') do
    expect("113".numbers_to_words()).to(eq("one hundred thirteen"))
  end
  it('returns a word for a number between 100 and 999') do
    expect("109".numbers_to_words()).to(eq("one hundred nine"))
  end
  it('returns a word for a number between 1000 and 9999') do
    expect("1199".numbers_to_words()).to(eq("one thousand one hundred ninety nine"))
  end
  it('returns a word for a number between 10,000 and 99,999') do
    expect("31199".numbers_to_words()).to(eq("thirty one thousand one hundred ninety nine"))
  end
  it('returns a word for a number between 100,000 and 999,999') do
    expect("331199".numbers_to_words()).to(eq("three hundred thirty one thousand one hundred ninety nine"))
  end
  it('returns a word for a number between 1,000,000 and 999,999,999') do
    expect("3331199".numbers_to_words()).to(eq("three million three hundred thirty one thousand one hundred ninety nine"))
  end
  it('returns a word for a number between 1,000,000,000 and 999,999,999,999') do
    expect("3331199000".numbers_to_words()).to(eq("three billion three hundred thirty one million one hundred ninety nine thousand"))
  end
  it('returns a word for a number between 1,000,000,000 and 999,999,999,999') do
    expect("3331199100".numbers_to_words()).to(eq("three billion three hundred thirty one million one hundred ninety nine thousand one hundred"))
  end
  it('returns a word for a number between 1,000,000,000,000 and 999,999,999,999,999') do
    expect("3331199100000".numbers_to_words()).to(eq("three trillion three hundred thirty one billion one hundred ninety nine million one hundred thousand"))
  end
end
