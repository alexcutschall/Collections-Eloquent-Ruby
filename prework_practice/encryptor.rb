class Encryptor
  def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r', 'f' => 's', 'g' => 't',
    'h' => 'u', 'i' => 'v', 'j' => 'w', 'k'=> 'x', 'l' => 'y', 'm' => 'z', 'n' => 'a',
    'o' => 'b', 'p' => 'c', 'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g', 'u' => 'h', 'v' => 'i',
    'w' => 'j', 'x' => 'k', 'y' => 'l', 'z' => 'm'}
  end
  def encrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[lowercase_letter]
  end

  def decrypt_letter(letter)
    lowercase_letter = letter.downcase
    cipher[lowercase_letter]
  end

  def encrypt(string)
    letters = string.split("")
      results = letters.collect do |letter|
        encrypted_letter = encrypt_letter(letter)
        end

      results.join
  end

  def decrypt(string)
    letters = string.split("")
      results = letters.collect do |letter|
        unencrypted_letter = decrypt_letter(letter)
      end

      results.join
  end
end

#mistakes, was missing an end, I didn't end the cipher function before starting the encrypt
#so it would work, missing an end after a do in encrypt(string), I didn't re-load in irb.
#decrypt was the same exact thing, you just type in the opposite letter....
#I had put rotation into the do/end of encrypt
