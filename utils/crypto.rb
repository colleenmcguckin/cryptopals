def hex_to_base64(string)
  Base64.encode64([string].pack('H*'))
end

class Stats
  def self.chi_sq_score(observed, expected)
    # TODO: what if these args aren't the same length?
    # TODO: don't mutate these vars
    observed = [observed].flatten(1)
    expected = [expected].flatten(1)

    observed.map.with_index do |v, i|
      ((v.to_f - expected[i].to_f) ** 2) / expected[i].to_f
    end.sum
  end
end

class Range
  LOWERCASE = ['lowercase', :lowercase].freeze
  UPPERCASE = ['uppercase', :uppercase].freeze

  def self.letters(transformation=nil)
    return ('a'..'z').to_a if LOWERCASE.include?(transformation)

    return ('A'..'Z').to_a if UPPERCASE.include?(transformation)

    return ('A'..'z').to_a
  end
end

LETTER_FREQUENCY = {
  a: .08167,
  b: .01492,
  c: .02782,
  d: .04253,
  e: .12702,
  f: .02228,
  g: .02015,
  h: .06094,
  i: .06966,
  j: .00153,
  k: .03872,
  l: .04025,
  m: .02406,
  n: .06749,
  o: .07507,
  p: .01929,
  q: .00095,
  r: .05987,
  s: .06327,
  t: .09256,
  u: .02758,
  v: .00978,
  w: .05370,
  x: .00150,
  y: .03978,
  z: .00074
}
