# Récupération d'une image
FROM gcc:12.2.0

# Mettre des commandes non interactives
RUN apt install -y curl

RUN mkdir -p /app/test

COPY src/* /app/
COPY src/test /app/test/

WORKDIR /app

RUN make
RUN make test
RUN make clean
RUN make clean_test

CMD ["/app/main"]

#Lancer la commande docker build -t formation/app:1.0.0 .

