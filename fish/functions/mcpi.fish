function mcpi --wraps='ssh ubuntu@mcpi.local' --description 'alias mcpi=ssh ubuntu@mcpi.local'
  ssh ubuntu@mcpi.local $argv; 
end
