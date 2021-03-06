class Encryptor
  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
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
