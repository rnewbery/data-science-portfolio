############################################################
# Western Kingbird Morphometric Analysis
# Author: Rae Newbery
# Purpose: Test whether tarsus length differs between
#          northern and southern populations of
#          the Western Kingbird (Tyrannus verticalis)
############################################################

# --- 1. Import the data ---
# Use file.choose() if running interactively, or replace with the file path.
kingbirds <- read.csv(file = file.choose(), stringsAsFactors = TRUE)

# --- 2. Explore and summarise the data ---
summary(kingbirds)

# Check sample sizes and variable distributions
table(kingbirds$subpop)  # Subpopulation counts
hist(kingbirds$tarsus, main = "Tarsus Length Distribution", xlab = "Tarsus (mm)")
hist(kingbirds$mass, main = "Mass Distribution", xlab = "Mass (g)")

# --- 3. Relationship between tarsus length and mass ---
plot(
  kingbirds$mass ~ kingbirds$tarsus,
  xlab = "Tarsus Length (mm)",
  ylab = "Mass (g)",
  main = "Mass vs Tarsus Length in Western Kingbirds"
)

# --- 4. Visualise tarsus length by population ---
plot(
  kingbirds$tarsus ~ kingbirds$subpop,
  xlab = "Population (North/South)",
  ylab = "Tarsus Length (mm)",
  main = "Tarsus Length by Population"
)

# --- 5. Calculate group means and variances ---
tapply(X = kingbirds$tarsus, INDEX = kingbirds$subpop, FUN = mean)
tapply(X = kingbirds$tarsus, INDEX = kingbirds$subpop, FUN = var)

# --- 6. Run a GLM to test for differences in tarsus length between populations ---
kingbirds.model <- glm(formula = tarsus ~ subpop, data = kingbirds)

# Inspect residuals and check assumptions
hist(residuals(kingbirds.model), main = "Residuals of GLM", xlab = "Residuals")
shapiro.test(residuals(kingbirds.model))  # Normality test

# --- 7. Compare to null model using F-statistic ANOVA ---
anova(kingbirds.model, test = "F")

# --- 8. Extract model summary and effect size ---
summary(kingbirds.model)

# Calculate approximate r-squared (using model deviances)
r_squared <- 1 - (kingbirds.model$deviance / kingbirds.model$null.deviance)
cat("Approximate R-squared:", round(r_squared, 3), "\n")

# --- 9. Optional: save model summary to file ---
sink("kingbird_model_summary.txt")
summary(kingbirds.model)
cat("\nApproximate R-squared:", round(r_squared, 3))
sink()

############################################################
# End of script
# Outputs:
# - Summary statistics in console
# - Diagnostic plots
# - Model summary saved to kingbird_model_summary.txt
############################################################
