def pig_latin(string)
  string = string.downcase
  string_array = string.split(" ")
  results_array = []
  string_array.each do |word|
    word_split = punctuation_splits(word)    
    new_word = word_split[1]

    split_point = new_word.index(/a|e|i|o|(?<!q)u|(?<!^)y/)
    if split_point > 0
      new_word = new_word[split_point..-1] + new_word[0..split_point-1]
    end

    new_word = new_word + "ay"
    results_array << word_split[0] + new_word + word_split[2]
  end
  results_array[0] = results_array[0].capitalize
  results_array.join(" ")
end

def punctuation_splits(word)
  punc = /\w/
  front_punc = ""
  end_punc = ""
  new_word = word

  if new_word.index(punc) > 0
    beg_punc = new_word[0..(new_word.index(punc)-1)]
  end
  new_word = new_word[new_word.index(punc)..-1]
  if new_word.reverse.index(punc) > 0 
    end_punc = new_word[(-(new_word.reverse.index(punc)))..-1]  
  end 
  new_word = new_word[0..(-(new_word.reverse.index(punc)+1))]    
  
  punctuation_array = [front_punc, new_word, end_punc]  
end
