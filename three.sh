total_bytes=$(ls -lAh | awk '{total += $5} END {print total}')
echo "Total number of bytes used: $total_bytes"
