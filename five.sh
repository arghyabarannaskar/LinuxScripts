find . -type f -name "*.sh" | while read file; do
    filename=$(basename "$file" .sh)
    
    mv "$file" "$filename.exe"
    
    echo "Renamed $file to $filename.exe"
done
