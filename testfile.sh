#!/bin/bash

# create a series of folders 1-10 with a series of text files 1-10 populated with between 1-10 x chars

for i in {1..10}; do mkdir -p "DIR$i" && echo -n $(printf "%0.sx" $(seq 1 $i)) > "DIR$i/FILE$i" && cd "DIR$i"; done
