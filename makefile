tabs = remit.tab
svgs = countryOrig-bar.svg remittance.svg yearsStudy-pie.svg yearsStudy-remittance.svg yearsStudy.svg
all: lecture.html
clean:
	rm -f ${tabs} ${svgs} lecture.html
.SUFFIXES: .html .md

.md.html:
	pandoc ${<} -st html >${@}

lecture.md: ${tabs} ${svgs}

${tabs} ${svgs}: script.R
	./script.R
