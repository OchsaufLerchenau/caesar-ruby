def caesar_cipher(string, shift)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  final_array = []

  string = string.split("")

  string.each do |char|

    #loop through string to check if special character
    #if yes push to final array and skip rest of iteration

    unless alpha.include?(char.downcase)
      final_array.push(char)
      next
    end
    
  #calculate alpha index of char and add shift

    index_plus_shift = alpha.index(char.downcase) + shift
    
  #calculate shifted index looped over alphabet

    if index_plus_shift < 0
      shifted_index = ((index_plus_shift * -1) % 26) * -1
    else
      shifted_index = (index_plus_shift % 26)
    end

  # if char is uppercase push upcase to final_array
  #else just push the character
    if /[A-Z]/ =~ char
      final_array.push(alpha[shifted_index].upcase)
    else
      final_array.push(alpha[shifted_index])
    end
  end

  final_array.join("")

end

puts caesar_cipher("What a string!", 5)