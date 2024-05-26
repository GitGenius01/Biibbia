# Comando: ggplto(data, aes(x = , y = ,), color/fill = ) + labs(title = "" , x = "")
istogramma1<- print(ggplot(data = mtcars, aes(x = hp, fill = factor(am))) + 
 geom_histogram(binwidth = 50, position = "identity", alpha = 0.5) + 
   labs(title = "Istogramma potenza", 
     x = "Hp", y = "Frequenza") +
  scale_fill_discrete(name = "Tipo di trasmissione (am)"))
# geom point(): Crea un grafico a dispersione (scatter plot) mostrando i punti dati.
# geom line(): Crea un grafico a linee collegando i punti dati in ordine.
# geom bar(): Crea un grafico a barre rappresentando la frequenza o il valore di una variabile.
# geom histogram(): Crea un istogramma mostrando la distribuzione di una variabile continua.
# geom boxplot(): Crea un boxplot visualizzando la distribuzione di una variabile attraverso quartili.

#geom density(): Crea un grafico di densit`a mostrando la distribuzione di una variabile continua.
# geom text(): Aggiunge testo ai grafici, come etichette o annotazioni. 
# geom path(): Traccia un percorso tra i punti dati, utile per dati sequenziali.
# geom smooth(): Aggiunge una curva di regressione o una linea liscia ai dati.
# geom area(): Riempie l’area sotto una curva, solitamente usato con linee o curve.

# geom polygon(): Crea un poligono collegando i punti dati, usato per rappresentare aree.
# geom jitter(): Aggiunge jitter ai dati, utile per rendere piu` chiari i dati sovrapposti.
# geom tile(): Crea un grafico a matrice di tessere, utile per rappresentare dati categorici.
# geom violin(): Crea un grafico a violino mostrando la distribuzione di una variabile.

# geom errorbar(): Aggiunge barre di errore ai grafici, utile per rappresentare la variazione.
# geom abline(): Aggiunge una linea di regressione o una linea con un’equazione specifica.
# geom hline(): Aggiunge una linea orizzontale a un grafico. 
# geom vline(): Aggiunge una linea verticale a un grafico. 
# geom label(): Aggiunge etichette ai punti sui grafici.

# Un fattore `e un tipo di dati in R utilizzato per rappresentare variabili categoriche
# con un numero finito di livelli o categorie.