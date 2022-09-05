---
title: Stats for Sociology w.r.t. Migration
date: 2022-09-13
---


# Intro
- Concepts over Formulae in the lecture
- Plenty of vocab
- [Berkeley Glossary](https://www.stat.berkeley.edu/~stark/SticiGui/Text/gloss.htm)
- See [Wikipedia Glossary](https://en.wikipedia.org/wiki/Glossary_of_probability_and_statistics) as well

## Motivation: Educational Migration and Remittance
Data: countryStudy, countryOrig, yearsStudy, remittance

- Describe the amount remitted by educational migrants
- Is the choice to remit independent of the country studied in?
- Do the total years spent studying in a country correlate with remittance?
- Further ramifications require theoretical understanding!

# Initial Concepts
- Population, census, sample (size)
- Representative, weighting
- Data types: numerical, categorical
- Sources of data (GIGO)
- Estimation

# Descriptive Statistics
- Proportion, probability, odds

## Univariate
- Distribution, skew
- Central Tendency: Mean, median, mode
- Dispersion: Variance, standard deviation

## Multivariate
- Response, Explanatory Variables
- Conditioning

# Graphics
### Numerical
- Histogram 
![](remittance.svg)
![](yearsStudy.svg)
### Numerical-Numerical
- Scatter plot
![](yearsStudy-remittance.svg)
### Numerical-Categorical
- Pie chart
![](yearsStudy-pie.svg)
- Barplot
![](countryOrig-bar.svg)
## Table of Counts
<table><tbody><tr><td></td><td>Denmark</td><td>New Zealand</td></tr><tr><td>No Remit</td><td>67</td><td>120</td></tr><tr><td>Remit</td><td>133</td><td>80</td></tr></tbody></table>

# Inferential Statistics
- Bias, assumptions
- [Correlation](https://www.stat.berkeley.edu/~stark/Java/Html/Correlation.htm) (vs. causation)
- Hypothesis testing
- p-value
- Confidence Interval
```
               2.5 %   97.5 %
(Intercept) 2435.021 3076.689
```
- $\chi^2$ test
```
        Pearson's Chi-squared test with Yates' continuity correction

data:  remit and countryStudy
X-squared = 27.155, df = 1, p-value = 1.878e-07
```
