require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")    
  end

  def exclamation?
    self.end_with?("!")    
  end

  def count_sentences
    #regex -> .split(/.*) -> zero or more periods
    punctuation_array = self.split(/[!.?]/)
    punctuation_array.delete("")
    #binding.pry

    return punctuation_array.length
  end
end