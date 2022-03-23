# Caesar's cipher

# examples

# > caesar_cipher("abcABC", 1)
# => "bcdBCD"

# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

# type

# mothod wich takes a string and an integer as parameters, and returns a string

# header

# caesar_cipher(string, key)

# description

# takes a string and an integer number, each string's character from "a" to "z" and from "A" to "Z"  is replaced by a letter some fixed number of positions down the alphabet (indicated by "key" number).

# body

def caesar_cipher (string, key)
  ascii_code = string.codepoints
  modified_code = ascii_code.map do |num| 
    if (64 < num && num < 91 )
      num += key
        while num > 90 do
         num -= 26
        end
      num
    elsif (96 < num && num < 123)
      num += key
        while num > 122 do
         num -= 26
        end
      num
    else
      num
    end
  end
  new_string = modified_code.map do |num|
    num.chr
  end
  p new_string.join()
end

# test

caesar_cipher("abcABC", 1)
# => "bcdBCD"

caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

# it ciphers letters one position down the alphabet 
caesar_cipher("abc", 1)
# => "bcd"

# it ciphers letters "key" positions while keeping the same case 
caesar_cipher("fgtGHF", 2)
# => "hivIJH"

# it ciphers letters while ignoring numbers and special characters
caesar_cipher("What a string!@%$#123", 5)
# => "Bmfy f xywnsl!@%$#"

# it chipers correctly when "key" value implies starting the alphabet over
caesar_cipher("xyz", 3)
# => "abc"