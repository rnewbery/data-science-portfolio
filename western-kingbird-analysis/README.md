# Western Kingbird Morphometric Analysis

### Objective
Investigate whether tarsus length differs between northern and southern populations of the Western Kingbird (*Tyrannus verticalis*) to assess potential morphological variation across the species’ range.

---

### Data
- **Source:** Western Kingbird morphometric dataset (course dataset, 2023)
- **Sample size:** n = 87 individuals
- **Variables:** subpopulation (North/South), tarsus length (mm), mass (g)
- **Tools:** R (base R, stats)

---

### Methods
1. Imported and summarised the dataset to check sample sizes and data distributions.  
2. Visualised relationships between tarsus length, mass, and subpopulation.  
3. Fitted a **general linear model (GLM)** to test for variation between populations.  
4. Checked residual normality (Shapiro–Wilk test).  
5. Compared the fitted model to a null model (ANOVA).  
6. Extracted effect size and r² to interpret model strength.

---

### Results
The tarsus length of male western kingbirds differed significantly between the northern and southern populations (F₁,₅₈ = 14.70, P = [insert value]).
Southern birds had a longer mean tarsus length by 1.21 mm (± 0.31 SE).
Sub-population explained approximately 20% of the variation in tarsus length (r² = 0.20).

---

### Visualisations
*Scatterplot: Tarsus Length vs Mass*
![Scatterplot](plots/scatterplotkingbirds.png)

*Boxplot: Tarsus Length by Subpopulation*
![Boxplot](plots/boxplotkingbirds.png)

*Histogram: Residual Distribution*
![Histogram](plots/histogramkingbirds.png)

---

### Example R Code
```r
kingbirds <- read.csv(file.choose(), stringsAsFactors = TRUE)

plot(kingbirds$mass ~ kingbirds$tarsus,
     xlab = "Tarsus Length (mm)",
     ylab = "Mass (g)")

kingbirds.model <- glm(tarsus ~ subpop, data = kingbirds)
hist(residuals(kingbirds.model))
shapiro.test(residuals(kingbirds.model))
anova(kingbirds.model, test = "F")
summary(kingbirds.model)
