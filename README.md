# 🐈 **Cat's blog** 🐈‍⬛

# Sujet

Ce kata est un challenge d'automatisation de la livraison et du deploiement d'un site statique.
 

### Etape 1 - Installations
___
- [Docker](https://docs.docker.com/get-docker/) 
- [GitLab Runner](https://docs.gitlab.com/runner/install/)

### Etape 2 - Configuration
___
- Forker ce projet 
- Enregistrer 2 runners **(désactiver les runners partagés)**: 

    1. build-runner  : un runner avec executor docker
    2. deploy-runner : un runner avec executor shell

### Etape 3 - Mise en place de la CI
___
- Gitflow : une branche principale et des branches de features (pas de branch dev)
- 3 stages 

    1. build   : se déclenche uniquement sur une `branche`, génère le contenu statique et le stocke comme artefact.
    2. package : se déclenche uniquement sur une `branche`, récupère l'artefact et le met dans une image Nginx.
    3. deploy  : uniquement dans un context de `merge request` ou `tag` respectant la sémantique de version [semver](https://semver.org/lang/fr), déploie le site en environnement de **développement** si contexte à `merge request` et en environnement de **production** si contexte `tag`.


# Specification [RFC2119](https://microformats.org/wiki/rfc-2119-fr) du kata

#TODO