for filename in *.csv; do
    [ -e "$filename" ] || continue
    echo 'Doing' $filename
    taptimise $filename 10000 --scribble 200 --steps 10 --scales 1000
done
