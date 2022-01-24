#03_basics.rb - Coded with love by JBV for THP Développeur Winter 2022

# who_is_bigger - Affiche le NOM DE LA VARIABLE contenant le plus grand nombre des 3 fournis
def who_is_bigger(a,b,c)
  my_hash={a:a,b:b,c:c}
  if my_hash[:a].nil? || my_hash[:b].nil? || my_hash[:c].nil?
    puts "nil detected" # Optionnel / Debug mode : permet de voir le résultat des tests
    "nil detected"
  else 
    puts "#{my_hash.key(my_hash.values.max)} is bigger" # Optionnel / Debug mode : permet de voir le résultat des tests
    "#{my_hash.key(my_hash.values.max)} is bigger"
  end
end

# reverse_upcase_noLTA - 
def reverse_upcase_noLTA(chaine)
  puts chaine.reverse.upcase.delete("LTA") # Optionnel / Debug mode : permet de voir le résultat des tests
  chaine.reverse.upcase.delete("LTA")
end

# array_42 - Returns TRUE if the given table contains 42, FALSE 
def array_42(xavier)
  !xavier.index(42).nil?
end

# magic_array - Manipulations d'un tableau (de tableaux possiblement)
# BONUS : You can do this in one line less than 55 chars... Did it in 49 symbols only ;-)
def magic_array(t)
  t.flatten.map{|i|i*2}.select{|j|j%3!=0}.uniq.sort
end

#03_basics.rb - Coded with love by JBV for THP Développeur Winter 2022