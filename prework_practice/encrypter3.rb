class Encryptor
  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter,rotation)
  cipher_for_rotation = cipher(rotation)
  cipher_for_rotation[letter]
end

def encrypt(string,rotation)
  results = letters.collect do |letter,rotation|
    encrypted_letter = encrypt_letter(letter, rotation)
  end
 end 
end
