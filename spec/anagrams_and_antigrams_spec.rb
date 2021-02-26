require('rspec')
require('pry')
require('anagrams_and_antigrams')

describe('Words#anagram') do
  it('Checks to see if inputted words are anagrams of each other') do
    @words = Words.new()
    expect(@words.anagram('listen', 'silent')).to(eq("These words are anagrams!"))
  end
  it('Checks to see if inputted words are anagrams of each other despite differing cases') do
    @words = Words.new()
    expect(@words.anagram('Case', 'Aces')).to(eq("These words are anagrams!"))
  end
  it('Checks to see if inputted words contain vowels') do
    @words = Words.new()
    expect(@words.anagram('ctnd', 'cautioned')).to(eq("You need to input actual words!"))
  end
end