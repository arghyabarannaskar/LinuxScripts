num_files=$(ls -l | grep "^-" | wc -l)
num_dirs=$(ls -l | grep "^d" | wc -l)

echo "Files:"
ls -p | grep -v /

echo "Directories:"
ls -d */

echo "Total number of files: $num_files"
echo "Total number of directories: $num_dirs"
