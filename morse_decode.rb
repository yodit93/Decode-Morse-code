def decode(letter)
  morse_msg = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.',
    'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.',
    'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-',
    'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
  }

  reverse_morse_msg = morse_msg.invert
  reverse_morse_msg[letter]
end

def decode_word(word)
  letters = word.split
  letters.map { |letter| decode letter }.join
end

def decode_msg(msg)
  words = msg.split(/   /)
  words.map { |word| decode_word word }.join(' ')
end
