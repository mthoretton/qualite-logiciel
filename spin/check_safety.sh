#!/bin/bash
spin -a -F safety.prp "$1" # génère un pan.c
gcc -DSAFETY -o pan pan.c
./pan
