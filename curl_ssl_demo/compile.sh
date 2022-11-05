#!/bin/bash

rm -f test url2file.o page.out
gcc -c url2file.c
gcc url2file.o -lcurl -o test 

