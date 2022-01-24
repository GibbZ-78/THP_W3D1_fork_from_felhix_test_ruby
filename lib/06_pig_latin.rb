#06_pig_latin.rb - Coded with love by JBV for THP Développeur Winter 2022

def begin_w_vowel(chaine)
  return chaine + "ay"
end

def begin_w_1_consonant(chaine)
  (chaine+chaine[0]+"ay")[1..-1]
end

def begin_w_2_consonants(chaine)
  if chaine[0,1] == "qu"
    (chaine+"quay")[2..-1]
  else
    (chaine+chaine[0]+chaine[1]+"ay")[2..-1]
  end
end

def begin_w_3_consonants(chaine)
  if chaine[1,2] == "qu"
    (chaine+chaine[0]+"quay")[3..-1]
  else
    (chaine+chaine[0]+chaine[1]+chaine[2]+"ay")[3..-1]
  end
end

def begin_w_qu(chaine)
  begin_w_2_consonants(chaine)
end

def begin_w_consonant_then_qu(chaine)
  begin_w_3_consonants(chaine)
end

def translate(chaine)
  tab=chaine.split
  str=""
  tampon=""
  result=[]

  for i in 0..(tab.length-1) do
    str=tab[i]
    puts "*** ITERATION #{i} - MOT : "+str
    if str[0] =~ /[aeiou]/
      tampon = begin_w_vowel(str)
      puts "    > begin_w_vowel : "+tampon
      result.push(tampon) # débute par une voyelle
    else
      if str.length >= 3 then
        if str[0] =~ /[bcdfghjklmnpqrstvwxyz]/
          if str[0,2] == "qu"
            tampon = begin_w_qu(str)
            puts "    > begin_w_qu : "+tampon
            result.push(tampon) # Débute par "qu"
          else
            if str[1,2] == "qu"
              tampon = begin_w_consonant_then_qu(str)
              puts "    > begin_w_consonant_then_qu : "+tampon
              result.push(tampon) # Débute par une consonne puis "qu"
            else
              if str[1] =~ /[bcdfghjklmnpqrstvwxyz]/ && str[2] =~ /[bcdfghjklmnpqrstvwxyz]/
                tampon = begin_w_3_consonants(str)
                puts "    > begin_w_3_consonants : "+tampon
                result.push(tampon) # Débute par 3 consonnes
              else
                if str[1] =~ /[bcdfghjklmnpqrstvwxyz]/
                  tampon = begin_w_2_consonants(str)
                  puts "    > begin_w_2_consonants : "+tampon
                  result.push(tampon) # Débute par 2 consonnes
                else
                  tampon = begin_w_1_consonant(str)
                  puts "    > begin_w_1_consonant : "+tampon
                  result.push(tampon) # Débute avec 1 seule consonne quand on arrive si bas dans la test :-)
                end
              end
            end
          end
        else
          # Branche morte (car, sauf "espaces" et caractères spéciaux, une lettre est soit une voyelle, soit une consonne)
        end
      else
        # Débute par une consonne et longueur <=2
        if str[0,2] == "qu"
          tampon = begin_w_qu(str)
          puts "    > begin_w_qu : "+tampon
          result.push(tampon) # Débute par "qu"
        else
          if str[1] =~ /[bcdfghjklmnpqrstvwxyz]/
            tampon = begin_w_2_consonants(str)
            puts "    > begin_w_2_consonants : "+tampon
            result.push(tampon) # Débute par 2 consonnes
          else
            tampon = begin_w_1_consonant(str)
            puts "    > begin_w_1_consonant : "+tampon
            result.push(tampon) # Débute avec 1 seule consonne
          end
        end
      end
    end
  end

  result.join(" ") #Reconstitution finale de la phrase, à base de "subwords", séparés par des espaces

end

#06_pig_latin.rb - Coded with love by JBV for THP Développeur Winter 2022