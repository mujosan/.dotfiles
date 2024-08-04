function ping5 --wraps='ping -c 5' --description 'alias ping5=ping -c 5'
  ping -c 5 $argv; 
end
