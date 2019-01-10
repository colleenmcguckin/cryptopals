require '../utils/crypto'
########### THREE ###########
# Single-byte XOR cipher
# The hex encoded string:
#
# 1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736
# ... has been XOR'd against a single character. Find the key, decrypt the message.
#
# You can do this by hand. But don't: write code to do it for you.
#
# How? Devise some method for "scoring" a piece of English plaintext. Character frequency is a good metric. Evaluate each output and choose the one with the best score.

class XorCipher
  def find_key(string)

  end
end

words = File.readlines('/usr/share/dict/words', chomp: true)
# LETTER_FREQUENCY = {
#   "a": .08167,
#   "b": .01492,
#   "c": .02782,
#   "d": .04253,
#   "e": .12702,
#   "f": .02228,
#   "g": .02015,
#   "h": .06094,
#   "i": .06966,
#   "j": .00153,
#   "k": .03872,
#   "l": .04025,
#   "m": .02406,
#   "n": .06749,
#   "o": .07507,
#   "p": .01929,
#   "q": .00095,
#   "r": .05987,
#   "s": .06327,
#   "t": .09256,
#   "u": .02758,
#   "v": .00978,
#   "w": .05370,
#   "x": .00150,
#   "y": .03978,
#   "z": .00074
# }

LETTER_FREQUENCY = {
  "a" => ".08167",
  "b" => ".01492",
  "c" => ".02782",
  "d" => ".04253",
  "e" => ".12702",
  "f" => ".02228",
  "g" => ".02015",
  "h" => ".06094",
  "i" => ".06966",
  "j" => ".00153",
  "k" => ".03872",
  "l" => ".04025",
  "m" => ".02406",
  "n" => ".06749",
  "o" => ".07507",
  "p" => ".01929",
  "q" => ".00095",
  "r" => ".05987",
  "s" => ".06327",
  "t" => ".09256",
  "u" => ".02758",
  "v" => ".00978",
  "w" => ".05370",
  "x" => ".00150",
  "y" => ".03978",
  "z" => ".00074"
}
# results = {}
# 0.upto(255) do |num|
#   result = string.scan(/../).map(&:hex).map { |hx| hx ^ num }.map(&:chr).join
#   results[num] = result
#   diff = result.split(' ').map(&:downcase) - words
#   if diff.size <= 1
#     puts "#{num} => #{result}"
#     break
#   end
# end

results = {}
0.upto(255) do |num|
  result = string.scan(/../).map(&:hex).map { |hx| hx ^ num }.map(&:chr).join
  results[num] = result
  lowest_score = nil
  ('a'..'z').each do |letter|
    letter_count = result.count(letter)
    observed_frequency = letter_count / result.chars.count
    score = Stats.chi_sq_score(observed_frequency, LETTER_FREQUENCY[letter].to_f)
    if score < lowest_score.to_f
      lowest_score = score
    end
  end

  puts lowest_score
end

# results.each do |result|
#   result.split(' ').
# end
#
# words.all?(result.split(' '))
