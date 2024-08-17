def encrypt(string, offset)
  abcUpper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  abcLower = "abcdefghijklmnopqrstuvwxyz"

  returnString = ""

  string.each_char do |char|
    #only apply shift if char is a letter
    if abcUpper.include?(char)
      returnString += abcUpper[(abcUpper.index(char) + offset) % 26]
    elsif abcLower.include?(char)
      returnString += abcLower[(abcLower.index(char) + offset) % 26]
    else
      returnString += char
    end
  
  end
  
    return returnString
end