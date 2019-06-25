require 'pry'

class String

  def sentence?
    self.end_with? '.'
  end

  def question?
    self.end_with? '?'
  end

  def exclamation?
    self.end_with? '!'
  end

  def count_sentences
    punct = 
    characters = self.split ''
    counter = 0
    characters.each_with_index do |char,index|
      if '!.?'.include?(char) && char != characters[index-1]
        
        counter += 1
      end
    end
    counter
    end

end
