function peek --wraps='tar tvzf' --description 'alias peek=tar tvzf'
  tar tvzf $argv; 
end
