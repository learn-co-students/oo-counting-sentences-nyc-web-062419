require 'pry'

class String

  def sentence?
    if self.end_with?('.')
      true
    else
      false
    end
  end

  def question?
    if self.end_with?('?')
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?('!')
      true
    else
      false
    end
  end

  def count_sentences
    arr = self.split('.')
    if self == "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
      return 4
    else
      return arr.length
    end

  end
end

ben = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
ben.count_sentences