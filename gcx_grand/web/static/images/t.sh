#!/usr/bin/env bash
for i in $(seq 1 1 25)
do
   wget -O tlm-luna-c${i}-495x1428.jpg https://picsum.photos/495/1428/?random
   wget -O tlm-mitar-c${i}-1500x1884.jpg https://picsum.photos/1500/1884/?random
done
