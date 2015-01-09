require('rspec')
require('word_count')

describe('String#word_count') do
  it("the method word_count recognizes the argument is the same as the object and returns the amount of times it appears")
    expect(("mantis").word_count("mantis")).to(eq("mantis"))
  end
end
