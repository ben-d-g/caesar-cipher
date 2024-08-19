# frozen_string_literal: true

def encrypt(string, offset)
  abc_upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  abc_lower = 'abcdefghijklmnopqrstuvwxyz'

  return_string = ''

  string.each_char do |char|
    # only apply shift if char is a letter
    return_string += if abc_upper.include?(char)
                       abc_upper[(abc_upper.index(char) + offset) % 26]
                     elsif abc_lower.include?(char)
                       abc_lower[(abc_lower.index(char) + offset) % 26]
                     else
                       char
                     end
  end

  return_string
end

def decrypt(string, offset)
  abc_upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  abc_lower = 'abcdefghijklmnopqrstuvwxyz'

  return_string = ''

  string.each_char do |char|
    # only apply shift if char is a letter
    return_string += if abc_upper.include?(char)
                       abc_upper[(abc_upper.index(char) - offset) % 26]
                     elsif abc_lower.include?(char)
                       abc_lower[(abc_lower.index(char) - offset) % 26]
                     else
                       char
                     end
  end

  return_string
end
