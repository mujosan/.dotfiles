function pihole2up --wraps=ssh\ pi@pihole2.local\ \'pihole\ -up\' --description alias\ pihole2up=ssh\ pi@pihole2.local\ \'pihole\ -up\'
  ssh pi@pihole2.local 'pihole -up' $argv; 
end
