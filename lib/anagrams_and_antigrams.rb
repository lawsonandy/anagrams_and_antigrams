class Words
  def anagram(word1, word2)
    sorted_word1 = word1.downcase.chars.sort.join.any?(/([aeiouy])/g)
    sorted_word2 = word2.downcase.chars.sort.join.any?(/([aeiouy])/g)
    if sorted_word1.eql?(sorted_word2)
      "These words are anagrams!"
    else
      "These words are NOT anagrams."
    end
  end
end