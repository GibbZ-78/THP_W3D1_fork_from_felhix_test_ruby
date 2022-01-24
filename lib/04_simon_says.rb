#04_simon_says.rb - Coded with love by JBV for THP Développeur Winter 2022

def echo(chaine)
  chaine
end

def shout(chaine)
  chaine.upcase
end

def repeat(chaine,occurence=2) # Quid du cas où occurence = 0 ou 1 ? La définition de l'exercice n'est pas claire à ce sujet... 
  occurence = [2,occurence].max # Pour compenser tout passage d'une occurence < 2, on la "rabat" sur 2 au minimum
  chaine=(chaine+" ")*(occurence)
  chaine.strip || chaine # cette ligne compense le renvoi de nil par Strip lorsqu'il n'y a pas d'espace à supprimer (ici, il en aura toujours un...)
end

def start_of_word(chaine,longueur)
  chaine[0,longueur]
end

def first_word(chaine)
  chaine.split[0]
end

def titleize(chaine)
  little_words = ["a","at","and","the","for","from","or","but"]
  tab=chaine.split # Utile uniquement pour DEBUG
  puts "tab: #{tab}"
  mot1=tab[0].capitalize # Le premier mot est toujours "capitalisé"
  puts "mot1: #{mot1}"
  tab2=tab.drop(1) # On retire le 1er mot pour ne tester/traiter que les autres (cas général)
  puts "tab2 (avant): #{tab2}" # utile uniquement pour DEBUG
  if !tab2.empty?
    tab2.map! {|subword| if !(little_words.include?(subword)) then subword.capitalize else subword end}
    puts "tab2 (après): #{tab2}" # utile uniquement pour DEBUG
    mot1 << " " << tab2.join(" ")
  else
    mot1
  end
end

#04_simon_says.rb - Coded with love by JBV for THP Développeur Winter 2022