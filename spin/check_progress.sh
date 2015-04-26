#!/bin/bash
spin -a -F progress.prp "$1"
gcc -o pan pan.c
./pan -a -f
