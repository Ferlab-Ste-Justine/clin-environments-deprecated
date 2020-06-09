![](https://github.com/cr-ste-justine/clin-environments/workflows/Deploy%20POC%20on%20QA/badge.svg)
![](https://github.com/cr-ste-justine/clin-environments/workflows/Deploy%20Clin%20Proxy%20Api%20on%20QA/badge.svg)
![](https://github.com/cr-ste-justine/clin-environments/workflows/Deploy%20Clin%20External%20Proxy%20on%20QA/badge.svg)

# About

This is a repo used to specify the clin orchestrations in various environments.

New **environment/component** combinations can be added by adding a new **environment/component** directory and a correspondimg Github workflow file (should this become unscalable later on, it should obviously be further adapted).

# Workflow

To deploy an orchestration change in an environment, simply edit the relevant orchestration files and get them merged on the master branch.

The pipeline will deploy the changes in the affected environment for you.

# Caviats

## Work in Progress Status

Currently, only a subset of the clin services on the **qa** environment are implemented (the remainainder of services still have to be deployed manually for the time being as well as secrets...).

Notably missing are:
- The overture clin services: https://github.com/cr-ste-justine/overture-dev-clin
- The overture core services: https://github.com/cr-ste-justine/overture-dev
- Elasticsearch: https://github.com/cr-ste-justine/devops/tree/dev/ES
- Aidbox: https://github.com/cr-ste-justine/devops/tree/dev/aidbox
- Keycloak: https://github.com/cr-ste-justine/devops/tree/dev/Keycloak
- MongoDB: https://github.com/cr-ste-justine/devops/tree/dev/Mongo
- Redis: https://github.com/cr-ste-justine/devops/tree/dev/Redis

Docker Secrets (also a work in progress, a lot of secrets are still embedded in the configuration) have been manually deployed with the help of these scripts:
- Aidbox Secrets: https://github.com/cr-ste-justine/devops/tree/dev/aidbox/secrets
- Keycloak Secrets: https://github.com/cr-ste-justine/devops/tree/dev/Keycloak/secrets
- Clin Proxy Api Secrets: https://github.com/cr-ste-justine/clin-proxy-api/tree/dev/secrets
- Letsencrypt Certificates: https://github.com/cr-ste-justine/devops/tree/dev/certificates

## Frontend Domain Reference

The domain of the frontend refers to is currently hardcoded into the image when the image is built and not composable (the image that is currently being pushed to Docker Hub points to the QA environment).

Some progress has been made try superficially correct the issue, but it is not complete and a deeper refactoring job might have to be undertaken to successfully make the domain composable at runtime: https://github.com/cr-ste-justine/clin-frontend/tree/feature/composable-domain