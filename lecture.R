#!/usr/bin/env Rscript

set.seed(1234)

N <- 200
countryStudy <- c(rep("Denmark", N), rep("New Zealand", N))
countryOrig <- c("India"=40, "China"=100, "USA"=5, "Australia"=5, "Korea"=30, "Indonesia"=50, "Malaysia"=40, "Tajikistan"=2, "Nigeria"=1)
countryOrig <- sort(round(200 * countryOrig / sum(countryOrig)), decreasing=TRUE)
yearsStudy <- rnbinom(2*N, 3, 0.5)
remittance <- 500 * yearsStudy + rlnorm(N, log(4000), log(1.5))
remit_i <- c(sample.int(N, round(2*N/3)), N+sample.int(N, round(2*N/5)))
remit <- logical(2*N)
remit[remit_i] <- TRUE
remittance[remit] <- 0

svg("remittance.svg")
hist(remittance)
dev.off()

svg("yearsStudy.svg")
hist(yearsStudy)
dev.off()

svg("yearsStudy-remittance.svg")
plot(yearsStudy ~ remittance, main="Years Studied to Remittance")
dev.off()

svg("yearsStudy-pie.svg")
pie(table(yearsStudy), main="Proportion of Sample by Years Studied")
dev.off()

svg("countryOrig-bar.svg")
barplot(countryOrig, main="Count of Educational Migrants by Country of Origin", las=2)
dev.off()

write.table(table(remit, countryStudy), "remit.tab")

cor(yearsStudy, remittance)
estRemittanceMean <- lm(remittance ~ 1)
confint(estRemittanceMean)
chisq.test(remit, countryStudy)
