require('rspec')
require('pig_latin')

describe('pig_latin') do 
  it('should append -ay to the end of a vowel-started word') do
    pig_latin("Epicodus").should(eq("Epicodusay"))
  end
  it('should append the first letter and -ay to the end of a consonant-started word') do
    pig_latin("patience").should(eq("Atiencepay"))
  end
  it('should append multiple initial consonants to the end of a word') do
    pig_latin("prior").should(eq("Iorpray"))
  end
  it('should handle non-initial "y"s as vowels') do
    pig_latin("psychology").should(eq("Ychologypsay"))
  end
  it('should move a "u" preceded by a "q" to the end') do
    pig_latin("queen").should(eq("Eenquay"))
  end
  it('should handle strings properly') do
    pig_latin('How do you do').should(eq("Owhay oday ouyay oday"))
  end
  it('should handle punctuation properly') do
    pig_latin('Say, how do you do?').should(eq("Aysay, owhay oday ouyay oday?"))
  end
  it('should handle initial "y"s properly') do
    pig_latin('Your eye?').should(eq("Ouryay eyeay?"))
  end
end
