#!/bin/bash

# Configuration
REMOTE_HOST="chanat-hostinger"
REMOTE_DIR="domains/chanatentreprise.org/public_html/"
LOCAL_DIR="/Volumes/Extreme SSD/CHANAT IMMOB/Chanat immobilier/construct/"

echo "🚀 Démarrage du déploiement vers chanatentreprise.org..."

# Utilisation de rsync pour un transfert rapide et intelligent
# -a: archive mode (conserve les permissions)
# -v: verbose (affiche les fichiers transférés)
# -z: compression (accélère le transfert)
# --delete: supprime les fichiers sur le serveur qui n'existent plus localement (optionnel)
rsync -rtvz --delete --exclude '.DS_Store' --exclude '.git/' --no-p --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r "$LOCAL_DIR" "$REMOTE_HOST:$REMOTE_DIR"

echo "✅ Déploiement terminé avec succès !"
