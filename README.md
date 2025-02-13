## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## Mode de développement

Lance le conteneur avec Vite en mode développement (avec hot reload):

```bash 
docker build -t vite-dev --target development .
```

🔹Crée une image nommée vite-dev en utilisant l'étape development du Dockerfile.


```bash 
docker run -it -p 5173:5173 --rm vite-dev
```

🔹Exécute un conteneur basé sur cette image.
🔹 -p 5173:5173 : Mappe le port Vite du conteneur sur l'hôte.
🔹 --rm : Supprime le conteneur après l'arrêt.
🔹 -it : Lance en mode interactif (pratique pour logs et debugging).

## Mode de production (nginx)

Construire et exécuter l'image optimisée avec Nginx :

```bash 
docker build -t vite-prod --target production .
```

🔹 Construit une image vite-prod en utilisant l'étape production du Dockerfile.

```bash
docker run -d -p 8080:80 vite-prod
```
🔹 Exécute le conteneur en mode détaché (-d).
🔹 -p 8080:80 : Mappe le port 80 de Nginx vers 8080 sur l'hôte.
🔹 Nginx sert les fichiers statique de dist/ générés par Vite.

## Pour push une image 

Si tu utilises Docker Hub, connecte-toi :

```bash
docker login
```

🔹 Si tu n’as pas encore de compte, crée-en un ici : https://hub.docker.com/

```bash
docker tag vite-prod monuser/vite-app:latest
```

🔹 En remplaçant monuser par ton username Docker Hub

Envoie l'image sur Docker Hub avec :

```bash
docker push monuser/vite-app:latest
```

Après le push, pour tester ton image fait :

```bash
docker pull monuser/vite-app:latest
docker run -d -p 8080:80 monuser/vite-app:latest
```


## Changer de version de node :

```bash
nvm use
```

## Si la version n'est pas installée :

```bash
nvm install
```