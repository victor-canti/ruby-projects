def caesar_cipher(string, fix_num)
    return 'Error: Max fixed number position is 26!' if fix_num > 26

    alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
    upcase_alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('')

    cipher_str = string.split('').map do |char|
        if alphabet.include?(char)
            char = alphabet[alphabet.index(char) - 26 + fix_num]

        elsif upcase_alphabet.include?(char)
            char = upcase_alphabet[upcase_alphabet.index(char) - 26 + fix_num]

        else 
            char = char
        end
    end

    return cipher_str.join('')
end


    p caesar_cipher("What a string!", 5)
    #=> "Bmfy f xywnsl!"