function piholeup --wraps=ssh\ pi@pihole.local\ \'pihole\ -up\' --description alias\ piholeup=ssh\ pi@pihole.local\ \'pihole\ -up\'
  ssh pi@pihole.local 'pihole -up' $argv; 
end
