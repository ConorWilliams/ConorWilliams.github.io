#!/bin/bash

echo 'Village Reports' > index.html

for filename in eWater/*.csv; do
    [ -e "$filename" ] || continue
    echo '<a href="eWater/'$filename'">'$filename'</a>' >> index.html

done