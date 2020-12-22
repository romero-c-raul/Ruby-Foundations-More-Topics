=begin

input: string
output: string

rules
  - Explicit rules:
    - Write a method that deciphers and prints each of these names
    - Replace with the 13th letter after in the alphabet
  Implicit rules:
    - If index value is 13 or below
      - index + 12
    - If index value is above 13
      - (25 - index) - 12

ALGORITHM
- Take list and convert into an array of names
- split every name into individual characters
- replace every letter by the 13th letter after in the alphabet (ignore spaces)
- join names back
- print each name
=end

ALPHABET = ('a'..'z').to_a

def decrypt(name)
  new_name = name.chars.map do |current_char|
    current_index = ALPHABET.index(current_char.downcase)
    if current_index == nil
      " "
    elsif current_index <= 12
      ALPHABET[current_index + 13]
    else 
      ALPHABET[current_index - 13]
    end
  end.join
  
  new_name.split(" ").map { |word| word.capitalize }.join(" ")
end


def decrypt_list(list)
  name_collection = []
  
  list.each_line { |name| name_collection << name.gsub("\n", '') }
  
  name_collection.each { |current_name| puts decrypt(current_name) }
end

list = "Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu"

decrypt_list(list)
