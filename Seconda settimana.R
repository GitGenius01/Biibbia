# x4 - lista che contiene un vettore di stringhe, una lista di stringhe ed un altro vettore numerico

lista<- list(c("ciao come va?"), list("Paolo"), c(1,2,5,4,7))
lista

# x5 - lista che contiene una lista di vettori

lista1<- list(list(c(1,2,4,5),c(4,6,9)))
lista1

# x6 - lista che contiene tre liste, di cui la prima contiene 3 tipi di dati diversi

lista2<- list(list(1, "Paolo", 2.6), list(1,3,4,2), list("MArco"))
lista2
#importante vedere come viene suddiviso l'output [[1]] indica il primo elemento della lista generale
#[[1]][[1]] la posizione del primo elemento (ovvero list) della lista generale
#le liste vengono suddivise in ogni singolo elemnto, i vettori compongono un solo elemento (guardare differenza 
#di nomenclatura da list e c -> list scompone sempre, c è solo [[1]][[2]].)

#Cicli 

# Calcolare la somma dei numeri da 1 a 10

somma<-0 
for (i in 1:10){
  somma<- somma + i
}
print(somma)

# Stampare i numeri pari da 1 a 20

for (i in 1:20){
  if (i %% 2 == 0){
    print (i)
  }
}

# Scrivi un programma in R che utilizzi un ciclo while per stampare i numeri da 1 a 10.

x<-1
while (x<=10){
  print(x)
  x<-x+1
}
  
# Scrivi un programma in R che utilizzi un ciclo for per calcolare la somma dei quadrati dei
# numeri da 1 a 5.

somma<-0
for ( i in 1:5){
  somma<- somma + (i)^2
}
print(somma)

# Scrivi un programma in R che utilizzi un ciclo while per stampare i primi 5 numeri della sequenza
# di Fibonacci.

a<- 0
b<- 1
count<- 0
while(count<5){
  print(a)
  c<- a + b
  a<- b
  b<- c
  count<- count+1
}

# Scrivi un programma in R che utilizzi un ciclo for per trovare il massimo di un vettore di numeri.

v<- c(1,5,5,7,5,7,9,5)
massimo<- v[1]
for (num in v){
  if(num>massimo){
    massimo<- num
  }
}
print(massimo)

# Scrivi un programma con un ciclo for o while in R che date due stringhe, restituisca la concatenazione
# delle stesse.

str1<- "Ciao sono"
str2<- "Paolo"
lungstr1<- nchar(str1)
lungstr2<- nchar(str2)
risultato<-""

for(i in 1:lungstr2){
  s<-risultato
  s<- paste(risultato, str1, str2)
}
print (s) # in realtà così utilizzo solo il paste 

str1<- "Ciao sono"
str2<- "Paolo"
lunghezza1<- nchar(str1)
lunghezza2<- nchar(str2)
risultato<- ""

i <- 1
while(i <= lunghezza1){
  risultato<- paste(risultato, substr(str1, i, i), sep = "")
  i<- i +1
}

i<- 1
while(i <= lunghezza2){
  risultato<- paste(risultato, substr(str2, i, i), sep = "")
  i<- i+1
}

print(risultato)

# Scrivi un programma in R che data una stringa, restituisca la sua lunghezza, contando all’interno di un
# loop for o while.

str1<- "Ciao sono"
lunghezza<- nchar(str1)

for (i in 1:lunghezza){
  s<- lunghezza
}
print(s) #non penso sia correttisimo come risultato 
print(s==nchar(str1))
# metodo prof 
stringa <- "Ciao mondo!"
lunghezza <- 0
for (carattere in strsplit(stringa, "")[[1]]) {
  lunghezza <- lunghezza + 1
}
print(lunghezza)
print(lunghezza == nchar(stringa))

# Scrivi un programma in R che data una stringa, restituisca la stessa stringa al 
# contrario, usando for/while.

str<- "Ciao mondo"
lunghezzastr<- nchar(str)
ris<- ""

i<- 0
for(i in lunghezzastr:1){
  ris<- paste(ris, substr(str, i, i), sep = "")
}
print(ris)

# Scrivi un programma in R che data una frase, la frammenti in diverse parole, inserendole
# in un vettore. Dopdich`e, cicli sul vettore e conti quante volte compare una certa parola 
# all’interno della frase.

frase<- "Ciao bella io ti conosco tu fumi cannella"
split<- strsplit(frase, " ")
parole<- split [[1]]
parola_da_considerare<- "cannella"
conteggio<- 0 
for(p in parole){
  if(parola_da_considerare==p)
    conteggio<- conteggio + 1
}
print(conteggio)

# Scrivi un programma in R che controlli se un numero `e positivo, negativo o zero.

a<- 5
if (a > 0){
  print("a è positivo")
} else if ( a == 0) {
  print("a è zero")
} else if (a < 0){
  print("a è negativo")
}

# Scrivi un programma in R che trovi il massimo tra tre numeri dati.

a<- 5
b<- 16
c<- 8

if (a>c & a>b){
  print("il massimo è a")
} else if (b>a & c>a){
  print("il massimo è b")
} else if (c>a & c>b){
  print("il massimo è c")
}

# Scrivi un programma in R che verifichi se un anno `e bisestile o meno.

anno<- 2025
if((anno %% 4 == 0 & anno %% 100 != 0) | (anno %% 400 == 0)){
  print(paste("L'anno", anno, "è bisestile"))
} else {
  print(paste("L'anno", anno, "non è bisedtile"))
}

# Scrivi un programma in R che determini se un numero intero `e pari o dispari.

a<- 6
if(a %% 2 == 0){
  print("a è positivo")
} else {
  print("a è negativo")
}

# Scrivi un programma in R che ordini tre numeri dati in ordine crescente utilizzando 
# solo le istruzioni condizionali if-else.

a<-5
b<-8
c<-15
if(a<= b & a<=c){
  if(b<=c){
    print(paste("Ordine crescente:", a, b, c))
  } else {
    print(paste("Ordine crescente:", a, c, b))
  } } else if (b<=c & b<=a){
    if(c<=a){
      print(paste("Ordine crescente:", b, c, a))
    } else {
      print(paste("Ordine crescente:", b, a, c))
    }} else {
    if (a<=b){
      print(paste("Ordine crescente:", c, a, b))
    } else{
      print(paste("Ordine crescente:", c, b, a))
    }
  }











