# Garden Birdwatch Summary

This project uses Python to analyse and categorise bird sightings from a UK garden birdwatching survey.  
It summarises total bird counts, classifies species by abundance, and identifies the most and least common species.  
The results are written to a formatted summary file for quick reporting.

---

## Project Purpose

This project demonstrates practical data analysis and automation using Python in an ecological context.  
It was developed to show how scripting can support small-scale citizen science or fieldwork projects — useful for conservationists, ecologists, and early-career data professionals.

---

## Features

- Calculates total birds observed  
- Categorises species by abundance levels:  
  - Very Common (≥10)  
  - Common (≥5)  
  - Occasional (≥2)  
  - Rare (≤1)  
- Identifies most and least observed species  
- Saves a clean summary file (`bird_summary.txt`)  
- Includes example visual output showing top species observed  

---

## Skills Demonstrated

- **Python 3:** Loops, conditionals, and basic data structures  
- **File Handling:** Reading and writing structured text outputs  
- **Data Categorisation:** Logical grouping and thresholding  
- **Version Control:** Using Git and GitHub for portfolio development  
- **Documentation:** Clear project communication using Markdown  

---

## How to Run

1. Clone or download this repository  
2. Ensure Python 3.x is installed  
3. Run the script in your terminal:
   ```bash
   python garden_birdwatch.py
