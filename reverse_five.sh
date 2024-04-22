find . -type f -name "*.exe" | while read file; do
    filename=$(basename "$file" .exe)
    mv "$file" "$filename.sh"
    echo "Renamed $file to $filename.sh"
done
