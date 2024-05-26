# Coercizione implicita: avviene quando si utilizza un vettore in un contesto che
# si aspetta un certo tipo di vettore.
# TRUE `e convertito in 1 e FALSE `e convertito in 0.
# La somma di un vettore logico `e il numero di TRUE.
# La media di un vettore logico `e la proporzione di TRUE.

# Vett, Matrix, Array
# Vettore: Una collezione di elementi dello stesso tipo.
# Matrice: Una struttura bidimensionale di elementi dello stesso tipo. 
# Array: Una struttura multidimensionale di elementi dello stesso tipo.
# Una matrice `e un array bidimensionale di elementi omogenei (dello stesso tipo).
# Differisce dai vettori in quanto questi ultimi sono limitati ad una sola dimensione, 
# mentre le matrici possiedono n righe e m colonne.
# Con l’argomento opzionale dimnames `e possibile fornire una lista di etichette 
# personalizzate per i nomi delle righe e delle colonne.
# In alternativa, si pu`o creare una matrice senza etichette ed aggiungerle in un secondo
# momento assegnandole direttamente a rownames(M) e colnames(M).

#Dimensione matrice
# La funzione length(M) ritorna il numero totale di elementi della matrice M, che equivale
# a num righe × num colonne.
# Le funzioni nrow(M) e ncol(M) ritornano, rispettivamente, il numero di righe e di 
# colonne della matrice M.
# Con la funzione dim(M) `e possibile ricavare direttamente le dimensioni della matrice M, 
# ottenendo un vettore del tipo (numero di righe, numero di colonne).

#Array
# Gli array sono una generalizzazione dei vettori e delle matrici, ma possono gestire piu` di
# 2 dimensioni.

# Data frame
# I dataframe sono concettualmente simili alle matrici, in cui per`o le colonne possono
# contenere tipi di dati diversi.




