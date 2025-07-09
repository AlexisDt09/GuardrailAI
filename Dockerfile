# Utiliser une image Python officielle
FROM python:3.11-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier des dépendances (il le trouve maintenant à la racine)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code du backend et du frontend dans le conteneur
COPY generateurbackend/ .
COPY frontend/ ./frontend

# Exposer le port
EXPOSE 8000

# Lancer l'application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
