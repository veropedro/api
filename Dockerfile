# Image de base : Eclipse Temurin JDK 17
FROM eclipse-temurin:21-jdk

# Exposer le port 9000 sur lequel l'application va tourner
EXPOSE 9090

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR dans le conteneur
COPY target/api-0.0.1-SNAPSHOT.jar /app/api-0.0.1-SNAPSHOT.jar

# Commande pour exécuter le fichier JAR
CMD ["java", "-jar", "api-0.0.1-SNAPSHOT.jar"]