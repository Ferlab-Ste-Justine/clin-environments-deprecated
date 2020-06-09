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

Currently, only a subset of the clin services is for the **qa** environment is implemented (the remainainder of services still have to be deployed manually for the time being as well as secrets...)

## Frontend Domain Reference

The domain of the frontend refers to is currently hardcoded into the image when the image is built and not composable (the image that is currently being pushed to Docker Hub points to the QA environment).

Some progress has been made try superficially correct the issue, but it is not complete and a deeper refactoring job might have to be undertaken to successfully make the domain composable at runtime: https://github.com/cr-ste-justine/clin-frontend/tree/feature/composable-domain