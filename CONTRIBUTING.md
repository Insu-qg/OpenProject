# Gestion des contributions

## Processus de soumission

📌 1. Forker le dépôt

Rendez-vous sur la page du dépôt GitHub : [[URL_DU_DÉPÔT](https://github.com/Insu-qg/OpenProject)]

Cliquez sur Fork en haut à droite

Clonez votre fork en local :

```bash
git clone https://github.com/VOTRE_UTILISATEUR/NOM_DU_PROJET.git
cd NOM_DU_PROJET
```

📌 2. Créer une branche

Avant de commencer à coder, créez une branche dédiée à votre contribution :

```bash
git checkout -b feature/nom-de-la-fonctionnalité
```

💡 Nommez votre branche en fonction de votre contribution (ex. fix/bug-login ou feature/ajout-dark-mode).

📌 3. Faire des modifications et tester

Apportez vos modifications et testez votre code avant de le proposer.

Si vous ajoutez du code, assurez-vous de respecter les conventions de style du projet et d’inclure des tests si nécessaire.

📌 4. Commiter vos changements

Ajoutez vos fichiers modifiés :

```bash
git add .
Rédigez un message de commit clair et explicite :
```

```bash
git commit -m "✨ Ajout du mode sombre"
```
Bonne pratique : utilisez des emojis de commit (en lien avec la modification apportée) pour rendre les commits plus lisibles.

📌 5. Pousser votre branche

Envoyez vos modifications vers votre fork :

```bash
git push origin feature/nom-de-la-fonctionnalité
```

📌 6. Ouvrir une Pull Request (PR)

Rendez-vous sur le dépôt officiel du projet
Cliquez sur Pull Requests > New Pull Request
Sélectionnez votre branche et comparez avec main
Remplissez la description en expliquant ce que fait votre contribution
Ajoutez des captures d’écran ou une démo si pertinent
Soumettez la PR 🚀

📌 7. Attendre la revue et apporter des corrections si nécessaire

L’équipe de maintenance passera en revue votre PR et pourra demander des modifications. Restez disponible pour apporter des ajustements si nécessaire.

📌 8. Votre contribution est acceptée 🎉

Une fois validée, votre PR sera fusionnée et vous serez mentionné(e) comme contributeur(trice) !

## Infos supplémentaires

📌 Normes de codage
Pour garantir un code propre et cohérent, suivez ces règles :

🔹 Formatage & Style
Utiliser ESLint et Prettier pour le formatage automatique.
Respecter les conventions du projet (ex: camelCase pour les variables, PascalCase pour les composants React).
Utiliser des commentaires clairs si une partie du code est complexe.
Éviter le code redondant et privilégier la réutilisation des fonctions et composants.
🔹 Bonnes pratiques de développement
✅ Nommez vos variables et fonctions de manière explicite
❌ Mauvais : let x = 10;
✅ Bon : let maxUsersAllowed = 10;

✅ Organisez votre code de manière modulaire

Séparer la logique métier des composants.
Utiliser des dossiers bien structurés (/components, /utils, /hooks, etc.).
✅ Ne pas committer de fichiers sensibles (.env, node_modules, etc.).

📌 Normes de tests
Tous les changements doivent être testés avant d’être proposés en Pull Request.

🔹 Types de tests attendus
Unitaires → Testent une fonction spécifique
Intégration → Vérifient que plusieurs composants fonctionnent ensemble
E2E (End-to-End) → Simulent une utilisation complète de l’application
🔹 Outils recommandés
📦 Jest & Vitest → Pour les tests unitaires et d’intégration
🏗️ Cypress → Pour les tests E2E
🔹 Exemple de test unitaire (Jest)
js
Copier
Modifier
import { add } from '../utils/math';

test('addition de deux nombres', () => {
  expect(add(2, 3)).toBe(5);
});
🔹 Exécuter les tests
Avant d’ouvrir une Pull Request, assurez-vous que tous les tests passent :

sh
Copier
Modifier
npm test
📌 Communication
🔹 Signaler un problème (Issue)
Si vous trouvez un bug ou souhaitez suggérer une amélioration :

Vérifiez que l’issue n’existe pas déjà.
Créez une nouvelle Issue en expliquant clairement :
Étapes pour reproduire le bug
Comportement attendu vs actuel
Capture d’écran ou logs si possible
🔹 Discuter d'une fonctionnalité
Avant d’implémenter une grosse feature, ouvrez une issue pour discuter avec la communauté.

🔹 Rejoindre la discussion
Nous utilisons GitHub Discussions / Slack / Discord pour échanger sur le projet.