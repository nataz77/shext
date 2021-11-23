#!/bin/bash

function usage {
  echo 'makepfx: usage'
  echo 'Eg: makepfx cert.pfx key.pem cert.pem'
  echo 'makepfx {outcert} {inkey} {in-cert}'
}

function makepfx {
   if [ -z "$1" ] || [ -z "$1" ] || [ -z "$2" ] 
   then
      usage
   else
        openssl pkcs12 -export -out "$1" -inkey "$2" -in "$3"
   fi
}
