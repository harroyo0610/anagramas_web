class Word < ActiveRecord::Base
  def self.canonico(word)
    word = word.downcase.split("").sort.join
    Word.search_anagrams(word)
  end
  private
  def self.search_anagrams(canonica_word)
    array_canonicas_words = []
    Word.where(canonica: canonica_word).find_each do |t|
      array_canonicas_words << t
    end
    array_canonicas_words
  end
end


