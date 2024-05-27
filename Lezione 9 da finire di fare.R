#lapply() applica una funzione a tutta la lista
lista<- list(a = 1:5, b = 6:10)
lista2<- lapply(lista, sqrt)
lista2
vettore4<- sapply(lista, mean)
vettore4
v1<-c("a","b","c")
v2<-1:3
mapply(paste, v1,v2,v1)

#Esercizio 1: scrivi una funzione che cerchi in una matrice (primo parametro) un numero (secondo parametro)
#e applichi una funzione (terzo parametro) su tale numero (se lo trova)


applica_se_trovi<- function(m, n, func)[
  if( !is.matrix(m)){
    stop( "errore")
  }
  
  nr<-nrow(m)
  nc<-ncol(m)
  
  i<-1
  
  while(i<=nr) {
    j<-1
    while(j<= nc){
      val<- m[i,j]
      if(val==n){
        m[i,j]<- func(val)
      }
      j<-j+1
    }
    i<- i+1
    return(m)
  }
m<- matrix(1:8, 4,4)  
applica_se_trovi<- (m, 7, sqrt)
  
 

