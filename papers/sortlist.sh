ls *.pdf | while read f; do
    year=$(echo "$f" | grep -o '[0-9]\{4\}')
    echo "$year $f"
done | sort -n


#ls -l *.pdf | while read line; do
#    filename=$(echo "$line" | awk '{print $9}')
#    year=$(echo "$filename" | grep -o '[0-9]\{4\}')
#    echo "$year $line"
#done | sort -n | cut -d' ' -f2-


#for year in {1940..2024}; do
#    if ls -1 *${year}*.pdf >/dev/null 2>&1; then
#        echo "=== $year ==="
#        ls -l *${year}*.pdf | awk '{print "  " $9 " (" $5 " bytes)"}'
#    fi
#done
