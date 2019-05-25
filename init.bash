#!/bin/bash

set -e

mkdir CSYZ12
cd CSYZ12

read a b c

Makeit $a
Makeit $b
Makeit $c

cp $a/* ./
cp $b/* ./
cp $c/* ./
