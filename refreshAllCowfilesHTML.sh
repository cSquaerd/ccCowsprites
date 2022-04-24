#!/bin/bash

cd cowfiles
for F in ./*
do
	cowsay -f $F $(basename -s ".cow" $F)
done | ansi2html | tail -n +297 > newBody.html
cd ..

cat ansi2htmlHeader.html cowfiles/newBody.html > allCowfiles.new.html
rm cowfiles/newBody.html

