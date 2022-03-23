# caesars_cipher

This tools implements a type of substitution cipher in which each letter in the plaintext is 
replaced by a letter some fixed number of positions down the alphabet.

Takes a string and an integer number, each string's character from "a" to "z" and from "A" to "Z"  is replaced by a letter some fixed number of positions down the alphabet (indicated by "key" number).

In order to do so, it converts each string's letter to ACII code, then increases it's value by "key". Upper and lower case letters must be treated differently. While the ASCII resulting value exceeds the fix max number for lower case or upper case alphabet characters, it subtracts (26) from resulting value.

Converts resulting value to characters. Join characters into string. Returns string.
