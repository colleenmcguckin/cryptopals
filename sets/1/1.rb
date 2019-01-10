require '../utils/crypto'
########### ONE ###########
# Convert hex to base64
# The string:
#
# 49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d
# Should produce:
#
# SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t
# So go ahead and make that happen. You'll need to use this code for the rest of the exercises.

# 1) Split the string into an array of character pairs.
# 2) Convert those pairs to Integers.
# 3) Convert those integers to ASCII characters.
# 4) Join the array. => "I'm killing your brain like a poisonous mushroom"
# 5) Base64 encode the joined array

# phrase = string.scan(/\h\h/).map(&:hex).map(&:chr).join
# Base64.encode64(phrase)

### OR ####

# Base64.encode64([string].pack('H*'))

class HexToBase64
  def self.convert(string)
    Base64.encode64([string].pack('H*'))
  end
end
