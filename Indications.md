Lance le conteneur avec Vite en mode développement :

docker build -t vite-dev --target development .
docker run -it -p 5173:5173 --rm vite-dev

Construire et exécuter l'image optimisée avec Nginx :

docker build -t vite-prod --target production .
docker run -d -p 8080:80 vite-prod

Changer de version de node :

nvm use


Si la version n'est pas installée :

nvm install