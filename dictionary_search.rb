class DictionarySearch
  def initialize(file_path)
  	@hashDict = Hash.new
  	@macthedArr = []
  	File.foreach(file_path) do |line| 
  	 cutNewline = line.chomp
  	 if cutNewline.length > 2 && cutNewline[-1] != cutNewline[-2]
  	 swaped = swapWord(cutNewline) 
  	 	if @hashDict.has_key?(cutNewline)
  	 	  @macthedArr.push([swaped, cutNewline])
  	 	else
  	 	  @hashDict[swaped] = cutNewline
  	 	end
  	 end 
  	end
  end
  
  def word_pairs
  	return @macthedArr
  end
  private
  def swapWord(word)
    twoChar, word = word[-2..-1], word[0...-2]
    word += twoChar[1]
    word += twoChar[0]
    return word
  end
end  