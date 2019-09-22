#!/bin/bash

echo 'Village Reports' > index.html

for filename in eWater/*.html; do
    [ -e "$filename" ] || continue
    echo '<a href="'$filename'">'$filename'</a>' >> index.html

done