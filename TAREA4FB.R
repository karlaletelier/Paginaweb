## usando Fenty Bauty  extraeremos nombres de productos y sus precios##
FentyBeauty<- "https://www.fentybeauty.com/"
FentyBeauty<- read_html(FentyBeauty)
FentyBeauty_Productos<- html_nodes(FentyBeauty,".product-tile")
FentyBeauty_Productos<-html_text(FentyBeauty_Productos)
FentyBeauty_Productos<- gsub("\n","",FentyBeauty_Productos)
FentyB<- strsplit(FentyBeauty_Productos,"    ")[]
FentyB<- tolower(FentyB)
unlistFentyB<- unlist(FentyB)

tablaFentyB<-(unlistFentyB)
tablaFentyB<- table(tablaFentyB)
tablaFentyB

DF_fentybeauty<- as.data.frame(tablaFentyB)
write.csv(DF_fentybeauty, file="Fenty_Beauty.csv")

FentyBeautyPrice <- html_nodes(FentyBeauty,".product-sales-price")
FentyBeautyPrice <- html_text(FentyBeautyPrice)
FentyBeautyPrice<- gsub("\n","",FentyBeautyPrice)
FentyBeautyPrice<- gsub("\\$","US$",FentyBeautyPrice)
FentyBeautyPrice

FentyBP<- strsplit(FentyBeautyPrice," ")[]
FentyBP<- tolower(FentyBP)
unlistFentyBP<- unlist(FentyBP)

tablaFentyBP<-(unlistFentyBP)
tablaFentyBP<- table(tablaFentyBP)
tablaFentyBP

DF_fentybeautyP<- as.data.frame(tablaFentyBP)
write.csv(DF_fentybeautyP, file="Fenty_BeautyP.csv")

