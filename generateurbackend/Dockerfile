# Utiliser une image Python officielle
FROM python:3.11-slim

# Définir le dossier de travail dans le conteneur
WORKDIR /app

# Copier le fichier des dépendances
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le code de l'application
COPY generateurbackend/ .
COPY frontend/ ./frontend
# Exposer le port sur lequel l'application va tourner
EXPOSE 8000

# Commande pour lancer l'application
# On utilise --host 0.0.0.0 pour la rendre accessible de l'extérieur du conteneur
CMD ["gunicorn", "-w", "4", "-k", "uvicorn.workers.UvicornWorker", "-b", "0.0.0.0:8000", "main:app"]
