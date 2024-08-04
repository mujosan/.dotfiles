function cls --wraps=clear\;\ printf\ \'\\033\[3J\' --description alias\ cls=clear\;\ printf\ \'\\033\[3J\'
  clear; printf '\033[3J' $argv; 
end
