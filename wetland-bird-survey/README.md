# Wetland Bird Survey – RSPB Pulborough Brooks

This project contains my wetland bird survey analysis completed on **24 August 2024** at **RSPB Pulborough Brooks**.  
It includes data cleaning, summary statistics, species abundance, Shannon Diversity calculations, habitat-level summaries, and dashboard visualisations.

---

## Survey Overview

- **Location:** RSPB Pulborough Brooks, UK  
- **Method:** 30-minute vantage counts from 5 fixed hides  
- **Detections:** Visual + Acoustic  
- **Habitats Covered:** Grassland, Wetland, Open Water, Scrub, Arable Farmland  
- **Metrics Calculated:**
  - Species richness per habitat  
  - Total abundance  
  - Shannon Diversity (H′)  
  - Diversity using visual-only detections  
  - Top wetland bird species  
  - Behaviour counts  
  - Environmental conditions  

---

## 📊 Dashboard Outputs

The survey dashboard includes charts for:

- Total Abundance per Habitat  
- Wetland Bird Species Richness by Habitat  
- Shannon Diversity Index (H′)  
- Behaviour counts by type  
- Visual vs Acoustic detections  
- Top wetland bird species (visual-only)  
- Environmental summary table  

These were produced in **Google Sheets**, including pivot tables and custom formulas (SUMIF, COUNTUNIQUEIF, Shannon diversity manual formula).

---

## 📁 Files Included

| File | Description |
|------|-------------|
| `pulborough_data.csv` | Cleaned observation dataset |
| `summary_tables.xlsx` | Pivot tables + dashboard outputs |
| `dashboard_screenshots/` | Exported images of final dashboard |
| `README.md` | Overview of methods and outputs |

---

## Shannon Diversity Formula Used

```text
H' = - Σ (pᵢ * ln(pᵢ))
where pᵢ = (abundance of species i) / (total abundance in habitat)
