# ==== Étape 1 : Base pour dev et prod ====
FROM node:18 AS base

# Définir le répertoire de travail
WORKDIR /app

# Copier package.json et package-lock.json
COPY package.json package-lock.json ./

# Installer les dépendances (sans rebuild)
RUN npm install

# Copier le reste du code
COPY . .

# ==== Étape 2 : Développement ====
FROM base AS development

# Exposer le port Vite par défaut
EXPOSE 5173

# Commande pour démarrer Vite en mode dev
CMD ["npm", "run", "dev", "--", "--host"]

# ==== Étape 3 : Build pour production ====
FROM base AS build

# Construire l'application
RUN npm run build

# ==== Étape 4 : Production (Serveur Nginx) ====
FROM nginx:alpine AS production

# Copier les fichiers de build depuis l'étape précédente
COPY --from=build /app/dist /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
