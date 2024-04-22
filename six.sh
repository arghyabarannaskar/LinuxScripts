count=$(find . -type f -name "*.sh" -print0 | tr -d -c '\0' | wc -c)
echo "Number of shell scripts in the current directory: $((count))"
