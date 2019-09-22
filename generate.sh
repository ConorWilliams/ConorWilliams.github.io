#!/bin/bash

echo 'Village Reports' > index.html

for filename in eWater/*.html; do
    [ -e "$filename" ] || continue
    echo '<p><a href="'$filename'">'$filename'</a></p>' >> index.html

done