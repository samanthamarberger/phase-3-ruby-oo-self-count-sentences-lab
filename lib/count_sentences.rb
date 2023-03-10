require 'pry'

class String

  def sentence?
    if self.end_with?(".") 
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?") 
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!") 
      return true
    else
      return false
    end
  end

  def count_sentences
    sentences = self.split(/[.?!]/)
    cleared_sentence = sentences.filter {|sentence| sentence != ""}
  
    return cleared_sentence.count()
  end
end