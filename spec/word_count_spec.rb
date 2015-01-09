require('rspec')
require('word_count')

describe('String#word_count') do

  it("recognizes the argument is the same as the object and returns the amount of times it appears") do
    expect(("mantis").word_count("mantis")).to(eq(1))
  end

  it("recognizes the argument is listed more than once in the object and returns the amount of times it appears") do
    expect(("mantis mantis").word_count("mantis")).to(eq(2))
  end

  it("recognizes the argument is not listed when the object is two of the arguement with no spaces") do
    expect(("mantismantis").word_count("mantis")).to(eq(0))
  end
end
