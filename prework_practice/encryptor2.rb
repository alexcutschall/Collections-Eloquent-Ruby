class Encryptor
  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    letters = string.split("")
      results = letters.collect do |letter|
        encrypted_letter = encrypt_letter(letter, rotation)
        end
        results.join
      end

  def decrypt_letter(letter, rotation)
      cipher_for_rotation = cipher(rotation)
      cipher_for_rotation[letter]
  end

  def decrypt(string, rotation)
    rotation = rotation - (rotation * 2)
    letters = string.split("")
      results = letters.collect do |letter|
        unencrypted_letter = encrypt_letter(letter, rotation)
        end
        results.join
      end

  def decrypt_file(filename,rotation)
    rotation = rotation - (rotation * 2)
    # 1) Create the file handle to the input file
    file = File.open(filename, "r")
    # 2) Read the text of the input file
    p opened_file = file.read
    # 3) Encrypt the text
    encrypt(opened_file, rotation)
    # 4) Create a name for the output file
    #filename += ".encrypted"
    # 5) Create an output file handle
    #encrypted_file = File.open(filename, "w")
    # 6) Write out the text
    #encrypted_file.write()
    # 7) Close the file
    #encrypted_file.close
  end

end
