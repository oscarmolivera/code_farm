def validBracketSequence(sequence)
  status = nil
  open_sign = ['{', '[', '(']
  close_sign = ['}', ']', ')']
  sign_pairs = { '{' => '}', '[' => ']', '(' => ')'}
  first_char = sequence.chars[0]
  return false if sequence.count(sign_pairs.keys[0]) != sequence.count(sign_pairs[sign_pairs.keys[0]]) ||
                  sequence.count(sign_pairs.keys[1]) != sequence.count(sign_pairs[sign_pairs.keys[1]]) ||
                  sequence.count(sign_pairs.keys[2]) != sequence.count(sign_pairs[sign_pairs.keys[2]])
  return false if close_sign.include?(first_char)

  sequence.chars.each do |char_a, char_b|
    if open_sign.include?(char_a) || open_sign.include?(char_b) || sign_pairs[char_a] == char_b
      p "true"
    else
      p "false"
    end
  end
  status
end

p validBracketSequence('[(})]')