library(RCurl)
library(XML)

base <- "~/Documents/RKI/FuenfJBericht2015/02_Vorarbeit/05_Behandlung/OncoMap_map"

dir.exists(base)

centURL <- "http://www.oncomap.de/index.php"

url.exists(centURL)

getURLContent(centURL)

res <- postForm(centURL, zentrum = "21", z_land = "1")

tabs <- readHTMLTable(res)
names(tabs)

tabs[[2]]

