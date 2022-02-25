def caesar_cipher(string, factor)
    split_string = string.split('')
    string_ord_modified = []
    split_string.map do |char| 
        if char =~ /[A-Za-z]/
            if char == char.upcase
                new_char = ((char.ord + factor - 65) % 26 + 65).chr
                string_ord_modified.push(new_char)
            else
                new_char = ((char.ord + factor - 97) % 26 + 97).chr
                string_ord_modified.push(new_char)
            end
        else
            string_ord_modified.push(char)
        end
    end
    return string_ord_modified.join('')  
end

caesar_cipher("What a string!", 3)