#!/bin/bash

# Set the start date
START_DATE="2024-10-12"

# Calculate the end date (100 days from start)
END_DATE=$(date -v+99d -jf "%Y-%m-%d" "$START_DATE" +"%Y-%m-%d")

# Create and write the header to the markdown file
cat <<EOL > 100doc.md
# 100 Days of Code

**Start Date:** $(date -jf "%Y-%m-%d" "$START_DATE" +"%B %d, %Y")  
**End Date:** $(date -jf "%Y-%m-%d" "$END_DATE" +"%B %d, %Y")  

---

## Rules
1. Code every day for at least an hour.
2. Log the progress here every day.

---

## Log
EOL

# Generate 100 days of logs
for i in $(seq 0 99); do
  CURRENT_DATE=$(date -v+"$i"d -jf "%Y-%m-%d" "$START_DATE" +"%B %d, %Y")
  echo -e "\n### Day $((i + 1)) - $CURRENT_DATE" >> 100doc.md
  echo "**Notes:**  " >> 100doc.md
  echo "---" >> 100doc.md
done

echo "100 Days of Code markdown file generated successfully!"
