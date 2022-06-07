# frozen_string_literal: true

# Caesar's cipher

# examples

# > cipher("abcABC", 1)
# => "bcdBCD"

# > cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

# type

# mothod wich takes a string and an integer as parameters, and returns a string

# header

# cipher(string, key)

# description

# takes a string and an integer number, each string's character from "a" to "z" and from "A" to "Z"  is replaced by a letter some fixed number of positions down the alphabet (indicated by "key" number).

# body

class Cipher
  def cipher(string, key)
    ascii_code = string.codepoints
    modified_code = ascii_code.map do |num|
      if num > 64 && num < 91
        num += key
        num -= 26 while num > 90
      elsif num > 96 && num < 123
        num += key
        num -= 26 while num > 122
      end
      num
    end
    new_string = modified_code.map(&:chr)
    p new_string.join
  end
end

# test (MOVE TESTS TO caesars_cipher_spec.rb to properly test the file)

# cipher('abcABC', 1)
# => "bcdBCD"

# cipher('What a string!', 5)
# => "Bmfy f xywnsl!"

# it ciphers letters one position down the alphabet
# cipher('abc', 1)
# => "bcd"

# it ciphers letters "key" positions while keeping the same case
# cipher('fgtGHF', 2)
# => "hivIJH"

# it ciphers letters while ignoring numbers and special characters
# cipher('What a string!@%$#123', 5)
# => "Bmfy f xywnsl!@%$#"

# it chipers correctly when "key" value implies starting the alphabet over
# cipher('xyz', 3)
# => "abc"
