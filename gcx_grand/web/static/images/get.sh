#!/bin/bash

#540px	720px	960px	1140px
mkdir HD
mkdir desktop
mkdir mobile
mkdir phoneSize
cd desktop
for i in $(seq 1 1 100)
do
   wget -O tlm-c${i}-1440by900.jpg https://picsum.photos/1440/900/?random
done
cd ..
cd mobile
for i in $(seq 1 1 100)
do
   wget -O tlm-c${i}-1024by720.jpg https://picsum.photos/1024/720/?random
done
cd ..
cd HD
for i in $(seq 1 1 100)
do
   wget -O tlm-c${i}-1920x1200.jpg https://picsum.photos/1920/1200/?random
done
cd phoneSize
for i in $(seq 1 1 100)
do
   wget -O tlm-c${i}-1920x1200.jpg https://picsum.photos/1920/1200/?random
done
