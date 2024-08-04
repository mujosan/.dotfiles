function sal --wraps='ssh-add -l' --description 'alias sal=ssh-add -l'
  ssh-add -l $argv; 
end
