# Student Grade Parser

A simple, lightweight Bash script to process, filter, and summarize student grade records from delimited text files using standard Unix utilities (`grep`, `awk`, `wc`).

## Features
- **Record Counting:** Determines total processed student entries using `wc`.
- **Conditional Filtering:** Isolates specific academic outcomes (failures and distinctions) with `grep`.
- **Text Formatting:** Standardizes raw CSV data into a readable tabular output via `awk`.
- **Summary Metrics:** Automatically calculates the class average score using `awk` arithmetic.

## How to Run
```bash
chmod +x student_filter.sh
./student_filter.sh
```
