 bind -M insert \; accept-autosuggestion
 bind -M default \; accept-autosuggestion
 bind -M insert -m default \cj\ck repaint
 

 bind -M insert \ca beginning-of-line
 bind -M insert \ce end-of-line

 bind -M default \ed peco_select_cd
 bind -M default \ez peco_select_z
 bind -M default \eh peco_select_history
 bind -M default \ef peco_select_file

 bind -M insert \ed peco_select_cd
 bind -M insert \ez peco_select_z
 bind -M insert \eh peco_select_history
 bind -M insert \ef peco_select_file
