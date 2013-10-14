install.packages(c("quantmod", "tseries"))
require(quantmod)
require(tseries)

# získej kurzy akcií z yahoo
cetv  <- get.hist.quote(instrument = "cetv", quote = c("Cl", "Vol"))

#odchody manažerů
data  <- as.Date(c("2003-5-14", "2010-7-1", "2013-8-21", "2013-10-14"))
jmena  <- c("Železný", "Dvořák", "Sarbu", "Andruško")
ypos  <- c(123, 123, 123, 115)

#minimum a maximum
cetv[cetv$Close==min(cetv$Close),]
cetv[cetv$Close==max(cetv$Close),]


# nakresli graf
plot(cetv$Close,main = "Kurs akcií CETV a odchody manažerů z TV Nova",
     ylim=c(0,125), col="red", type="l", lwd=0.75,
     pch=19,cex=0.6, xlab="Rok" ,ylab="Cena za jednu akcii v dolarech")
abline(v=data)
text(x=data, y=ypos, labels=jmena, pos=2)