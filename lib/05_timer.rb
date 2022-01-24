#05_timer.rb - Coded with love by JBV for THP Développeur Winter 2022

def complete_s(chaine)
  if chaine.length < 2
    "0"+chaine
  else
    chaine
  end
end

def time_string(hhmmss)
  hh = hhmmss / 3600
  mm = (hhmmss % 3600) / 60
  ss = (hhmmss % 3600) % 60
  complete_s(hh.to_s)+":"+complete_s(mm.to_s)+":"+complete_s(ss.to_s)
end

#05_timer.rb - Coded with love by JBV for THP Développeur Winter 2022