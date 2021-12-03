#!/bin/bash

function unpack-usage {
  echo 'unpack-tar: usage'
  echo 'Eg: unpack-tar arch.tar thisdir/'
  echo 'unpack-tar {inputarchive} {destinationfolder}'
}

function pack-usage {
  echo 'pack-tar: usage'
  echo 'Eg: pack-tar arch.tar thisdir/'
  echo 'unpack-tar {outputarchive} {inputfolder}'
}

function unpack-tar {
   if [ -z "$1" ] || [ -z "$2"  ]
   then
      unpack-usage
   else
      if [[ -d "$2" ]]
      then
        tar -xf "$1"  -C "$2"
      else
        mkdir -p "$2"
        tar -xf "$1"  -C "$2"
      fi
   fi
}


function pack-tar {
   if [ -z "$1" ] || [ -z "$2"  ]
   then
      pack-usage
   else
     tar -zcvf "$1" "$2"
   fi
}
