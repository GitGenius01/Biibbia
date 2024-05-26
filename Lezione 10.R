# Funzione my_mean
my_mean <- function(v){
  if (!is.numeric(v)){
    stop("L'input dev'essere numerico!")
  }
  s <- 0
  for(elem in v){
    s <- s + elem
  }
  return (s/length(v))
}

v <-1:10
my_mean(v)


crea_vettore_num_casuale <- function(lun, min, max){
  return(runif(lun,min,max))
}
i<-1 
while(i<15){
v<- crea_vettore_num_casuale(10, 0, 15)
media_mia<- my_mean(v)
media_r<- mean(v)
if (media_mia == media_r){
  print(paste("Iterazione", i, "OK"))
}
else{
  print(paste("Iterazione", i, "KO"))
}
i<- i+1
}

my_median<- function(v){
  if(!is.numeric(v)){
    stop("L'input dev'essere numerico")
  }
  v<- sort(v)
  if(length(v)%%2 == 0){
    return(mean(c(v[length(v)/2 ], v[length(v)/2+1])))
  } else{
    return(v[(length(v)+1)/2])
  } 
  }
vet1<- c(1,3,5,6,7,8)
my_median(vet1)

#implementazione funzione unique 
my_unique<-function(v){
  if(!is.numeric(v)){
    stop("L'input dev'essere numerico")
  }
  n<- length(v)
  vett<- vector()
  for (i in 1:n){
    if(!v[i] %in% vett){
      vett<- c(vett, v[i])}
    }
      
  return(vett)
}
vet2<- c(1,1,2,3,45,5,5,7)
my_unique(vet2)


#my matrix sum: Scrivi una funzione che calcoli la somma degli elementi di una matrice.
my_matrix<- function(m){
  if(!is.matrix(m)){
    stop("L'input dev'essere di tipo matrice")
  }
  sum<- 0
  for (i in 1:nrow(m)){
    for (j in 1:ncol(m)){
      sum<- m[i,j] + sum
    }
  }
  return(sum)
}

crea_matrice_num_casuale_normali <- function(n, media, devst, row, col){
  return(matrix(data = rnorm(n, mean = media, sd = devst ),
                nrow = row,
                ncol = col ))}

matrix<- crea_matrice_num_casuale_normali(6, 3, 1, 3, 3)
my_matrix(matrix)

#my_matrix_transpose Implementa una funzione che calcoli la trasposta di una matrice.
my_trasp<- function(matrix){
  if(!is.matrix(matrix)){
    stop("L'input dev'essere di tipo matrice")
  }
  righe<- nrow(matrix)
  colonne<- ncol(matrix)
  trasposta<- matrix(0, ncol = righe, nrow = colonne)
  for(i in 1:righe){
    for(j in 1:colonne){
      trasposta[j,i]<- matrix [i, j]
    }
  }
  return(trasposta)
}

mat1<- matrix(c(1:10), 5, 2)
mat1
my_trasp(mat1)

# my array sum: Scrivi una funzione che calcoli la somma degli elementi di un array 
# tridimensionale.

my_array_sum<- function(a){
  if(!is.array(a)){
    stop("L'input dev'essere un array") 
  }
  b<-dim(a)[1]
  c<-dim(a)[2]
  d<-dim(a)[3]
    sum<-0
    for(i in 1:b){
      for(j in 1:c){
        for(k in 1:d)
          sum<- a[i, j, k]  + sum
      }
    }
    return(sum)
}

array1<- array(1:24, dim = c(3,4,2))
my_array_sum(array1)
array1
length(array1)
# my array mean: Implementa una funzione che calcoli la media degli elementi di un
# array multidimensionale.

my_array_mean<- function(a){
  if(!is.array(a)){
  stop("L'input dev'essere un array") 
  }
  n<-length(a)
  sum<-0
  for(i in seq_along(a)){
        sum<- a[i]  + sum
  }
  media<- sum/n
  return(media)
  }

array1<- array(1:24, dim = c(3,4,2))
my_array_mean(array1)
array1
my_array_mean(array1) == mean(array1)
# my array sup: Implementa una funzione che restituisca TRUE se la media degli elementi
# di un array multidimensionale supera un valore di soglia s dato in input.

my_array_sup<- function(a, s){
  if(!is.array(a)){
   stop("L'input dev'essere un array") 
  }
  media<- my_array_mean(a)
  if(media > s){
    print("TRUE")
  } else print("FALSE")
  }


array1<- array(1:24, dim = c(3,4,2))
my_array_sup(array1, 24)

# my list length: Scrivi una funzione che restituisca il numero di elementi presenti in una lista.

my_list_length<- function(l){
  if (!is.list(l)){
    print("L'input dev'essere una lista")
  }
  sum<-0
  for (i in l){
    sum<- sum + 1
  }
  return(sum)
} 

lista1<- list(c(3, 4),"Mappe")
my_list_length(lista1)

# my list reverse: Implementa una funzione che inverte l’ordine degli elementi in una lista.

my_list_reverse<- function(l){
  if(!is.list(l)){
    print("L'input dev'essere un array")
  }
  return(l[length(l):1])
}

lista1<- list(c(3, 4),"Mappe")
my_list_reverse(lista1)

lista1

# my df mean: Scrivi una funzione che calcoli la media delle colonne numeriche in un dataframe.

my_df_mean<- function(df){
  if(!is.data.frame(df)){
    print("L'input dev'essere un data frame")
  }
  colonne_numeriche<- df[, sapply(df, is.numeric)]
  colonne<- ncol(colonne_numeriche)
  sum<-0 
  for(i in 1:colonne){
    sum[i]<- sum(colonne_numeriche[[i]])
    media<- sum/nrow(colonne_numeriche)
  }
  return(media)
}

df<- data.frame(
  nome = c("Paolo", "Matteo", "Antonio"),
  eta = c(25, 30, 35),
  punteggio = c(80, 90, 85))
my_df_mean(df)

# my df filter: Implementa una funzione che filtri le righe di un dataframe in base
# a una condizione specificata.

my_df_filter<- function(df, condizione){
  if(!is.data.frame(df)){
    print("L'input dev'essere data frame")
  }
  righe_filtrate<- df[condizione, ]
  return(righe_filtrate)
}

df<- data.frame(
  nome = c("Paolo", "Matteo", "Antonio"),
  eta = c(25, 30, 35),
  punteggio = c(80, 90, 85))
my_df_filter(df, df$eta>25)



#Theory 
# La programmazione `e il processo di scrivere istruzioni che un computer pu`o eseguire
# per risolvere un problema specifico o svolgere una determinata attivit`a. Comprendere 
# le nozioni di base della programmazione `e fondamentale per poter sviluppare applicazioni 
# software e risolvere problemi in modo efficiente.

# Algoritmo 
# Un algoritmo `e una sequenza di istruzioni ben definite e ordinate che descrivono
# il metodo per risolvere un problema. Gli algoritmi forniscono una guida step-by-step
# su come eseguire una determinata attivit`a.

# Strutture dati 
# Le strutture dati sono metodi per organizzare e memorizzare dati in modo efficace
# all’interno di un programma. Alcune strutture dati comuni includono vettori, liste,
# pile, code, alberi e grafi.

# Controllo di flusso 
# Il controllo di flusso determina l’ordine in cui le istruzioni vengono eseguite in un programma. 

# Funzioni 
# Le funzioni sono blocchi di codice autonomi che eseguono una determinata operazione.
# Le funzioni consentono di organizzare il codice in unit`a riutilizzabili e modulari,
# migliorando la leggibilit`a e la manutenibilit`a del codice.

# Gestione errori 
# La gestione degli errori `e il processo di identificazione, gestione e risoluzione di
# eventuali errori che si verificano durante l’esecuzione di un programma. Le tecniche comuni
# includono la validazione dell’input, la gestione delle eccezioni e il debug del codice.

#Pensiero algoritmico
# Il pensiero algoritmico `e la capacit`a di risolvere problemi in modo logico e sistematico,
# identificando gli algoritmi appropriati e applicando tecniche di risoluzione dei problemi.
# Il pensiero algoritmico `e una competenza fondamentale per diventare un programmatore efficace.







