class PigLatinizer

  def piglatinize(words)
    words.split(' ').map do |word|
      split = word.split(/([aeiouAEIOU].*)/).reverse
      if !split[1] || split[1] == ""
        split.join("") + "way"
      else
        split.join("") + "ay"
      end
    end.join(" ")
  end
end
