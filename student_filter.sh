#!/bin/bash

FILE="grades.txt"

if [ ! -f "$FILE" ]; then
    echo "Error: $FILE does not exist."
    exit 1
fi

echo "=========================================="
echo "         STUDENT GRADE PARSER             "
echo "=========================================="

total=$(wc -l < "$FILE" | tr -d " ")
echo "Total students processed: $total"

echo -e "\n[+] Students Requiring Academic Support (FAIL):"
grep "FAIL" "$FILE"

echo -e "\n[+] High Distinction Candidates (80s):"
grep ",8" "$FILE"

echo -e "\n[+] Formatted Grade List (awk):"
awk -F"," '{ printf "Student:            | Score: % | Status: \n", $1, $2, $3 }' "$FILE"

echo -e "\n[+] Class Performance Summary:"
awk -F"," '{ sum += $2; count++ } END { if (count > 0) printf "Class Average: 0.00%\n", (sum / count) }' "$FILE"

echo "=========================================="
