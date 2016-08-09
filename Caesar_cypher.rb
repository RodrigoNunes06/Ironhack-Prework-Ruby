


def solve_cipher (string, shift)

    alphabet = Array('a'..'z')

    decrypter = Hash[alphabet.zip(alphabet.rotate(shift))]

    string.chars.map { |c| decrypter.fetch(c, " ")}

end



def caesar_cipher (string, shift)

    alphabet = Array('a'..'z')

    encrypter  = Hash[alphabet.zip(alphabet.rotate(shift))]

    string.chars.map { |c| encrypter.fetch(c, " ") }

    
end

string = "my real name is donald duck"
puts "Encrypting #{string}"
puts caesar_cipher("my real name is donald duck", 3).join

cipher = "pb uhdo qdph lv grqdog gxfn"
puts "Decrypting #{cipher}"
puts solve_cipher("pb uhdo qdph lv grqdog gxfn", -3).join