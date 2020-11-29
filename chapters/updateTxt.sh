#!/bin/bash

for x in *.docx; do pandoc $x -o ${x/docx/txt}; done
for x in *.txt
do
    # perl -CS -pe 's/\N{U+0964}\n/\N{U+0964}/g' $x > $x.new
    # mv $x.new $x
    vim -nEs +'%s/\(\%u0964\)\n/\1/g' +wq $x
done
