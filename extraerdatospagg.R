install.packages("rvest")

library(rvest)

pagina<- read_html("tareaa4.html")

html_nodes(pagina,".rosado")

nodesDelHTML <- html_nodes(pagina,".rosado")

texto<-html_text(nodesDelHTML)

texto<-gsub("\n","",texto)
texto<-gsub("\r","",texto)
texto<-gsub("\t","",texto)
texto

tabla <- html_nodes(pagina,"table")
html_table(tabla)

