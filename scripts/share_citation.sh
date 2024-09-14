#!/bin/bash

randnum=$(shuf -i1-100 -n1);
prob=$(</home/pi/loginlog/scripts/joke_probability.txt)
echo $prob;
echo $randnum;
if (( $randnum < $prob )); then
    citation=$(shuf -n 1 /home/pi/loginlog/bibilography/bibilography.txt)
    intro=$(shuf -n 1 /home/pi/loginlog/bibilography/citeintro.txt)
    IFS=',' read -r name string <<< "$citation"
    echo $name
    tosay="${intro/NAME/"$name"}"
    echo "${tosay}: ${citation}" | /usr/bin/lp -o orientation-requested=6    
    /usr/bin/flite -ssml -voice /home/pi/loginlog/voices/cmu_us_slt.flitevox -t "${tosay}"
    echo " " | lp
    echo " " | lp
fi
