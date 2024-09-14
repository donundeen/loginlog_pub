#!/bin/bash

randnum=$(shuf -i1-100 -n1);
prob=$(</home/pi/loginlog/scripts/joke_probability.txt)
echo $prob;
echo $randnum;
if (( $randnum < $prob )); then
    joke=$(shuf -n 1 /home/pi/loginlog/jokes/jokes.txt)
    echo "${joke}" | /usr/bin/lp -o orientation-requested=6
    /usr/bin/flite -ssml -voice /home/pi/loginlog/voices/cmu_us_slt.flitevox -t "${joke}"
    /usr/bin/python /home/pi/loginlog/servodial/servodial_runonce_rand.py
    echo " " | lp
    echo " " | lp
fi
