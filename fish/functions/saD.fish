function saD --wraps='ssh-add -D' --description 'alias saD=ssh-add -D'
  ssh-add -D $argv; 
end
