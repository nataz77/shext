#!/bin/bash

function makepfx-usage {
  echo 'makepfx: usage'
  echo 'Eg: makepfx cert.pfx key.pem cert.pem'
  echo 'makepfx {outcert} {inkey} {in-cert}'
}

function makepfx {
   if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] 
   then
      makepfx-usage
   else
        openssl pkcs12 -export -out "$1" -inkey "$2" -in "$3"
   fi
}
