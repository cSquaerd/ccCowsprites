#!/bin/bash

cd cowfiles
(
	echo "Color Palette:"
	echo ""
	python ../paletteTest.py
	echo ""

	for F in ./*.cow
	do
		cowsay -f $F $(basename -s ".cow" $F)
	done
) | ansi2html -ls "xterm" > allCowfiles.new.html
#| tail -n +297 > newBody.html
cd ..
mv cowfiles/allCowfiles.new.html .
sed -i.old "13,45 s/cd/aa/g; 13,45 s/e5/aa/g; 13,45 s/a5/ff/g; 29,45 s/00/55/g; 29,45 s/8d/ff/g; 36 s/155/100/g; 9 s/AAAAAA/DDDDDD/" allCowfiles.new.html

diff allCowfiles.new.html.old allCowfiles.new.html

echo
echo "Fixed color palette."
rm allCowfiles.new.html.old

#cat ansi2htmlHeader.html cowfiles/newBody.html > allCowfiles.new.html
#rm cowfiles/newBody.html

