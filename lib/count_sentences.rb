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

    sentence_count = 0
    self.split(" ").each do |word|
      if word.sentence? || word.question? || word.exclamation?
        sentence_count += 1
      end
    end
    sentence_count

  end
end