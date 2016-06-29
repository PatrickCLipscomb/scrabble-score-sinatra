require('rspec')
require('scrabble_score')

describe("String#scrabble_score") do
  it('return the sum of the correct scores for each letter') do
    expect('ae'.scrabble_score()).to(eq(2))
  end
  it('return the sum of the correct scores for each letter') do
    expect('zebra'.scrabble_score()).to(eq(16))
  end
end
