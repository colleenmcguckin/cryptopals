########### TWO ###########
# Fixed XOR«»
# Write a function that takes two equal-length buffers and produces their XOR combination.
#
# If your function works properly, then when you feed it the string:
# 1c0111001f010100061a024b53535009181c
#
# ... after hex decoding, and when XOR'd against:
# 686974207468652062756c6c277320657965
#
# ... should produce:
# 746865206b696420646f6e277420706c6179

# 1) pairs of chars
# 2) hex numbers from those pairs
# hex1 = '1c0111001f010100061a024b53535009181c'.scan(/../).map(&:hex)
# hex2 = '686974207468652062756c6c277320657965'.scan(/../).map(&:hex)

# 3) zip the two results
# zipped = hex1.zip(hex2)

# 4) xor each number against the other’s
# 5) ascii chars

# chars = zipped.map { |a, b| (a ^ b).chr }

# 6) turn back into base 10 numbers, then back into hex
# chars.map(&:ord).map { |ord| ord.to_s(16).rjust(2, '0') }.join
class XOR
  def self.xor(string1, string2)

  end
end
