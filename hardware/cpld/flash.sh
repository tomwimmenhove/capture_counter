#!/bin/bash

#scp main.jed pi@jtagpi:~ && time ssh pi@jtagpi -- sudo xc3sprog -c sysfsgpio main.jed
xc3sprog -c ft232h main.jed


