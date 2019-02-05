# Azure DevOps Demo

## Terraform

We'll be using Terraform to provision our environment.

### Services
- Azure App Service Plan
    - App Service: Web App for Containers
    - This will be the application platform we'll be deploying/running our containerized application into
- Azure Container Registry
    - We will use this as the centralized storage system to save/deploy our Docker Container from
- Azure Cosmos DB
    - We will use this as our persistent data storage backend for our web app

## Web and API (Business Logic) Layers

1. We'll be deploying a Node.JS app that leverages the Express.js web application framework to build our API backend
2. We'll be using the Vue.js frontened web application framework to build a single page web app that makes calls to our API backend

## Data Persistence Layer (Database)

1. We'll be leveraging Cosmos DB as our primary data persistence/storage layer.  We will take advantage of it's NoSQL capabilities to enable us to iteratively change data types as needed while also getting wire protocol compatibility via the Mongo DB wire protocol API with Cosmos.
2. Caching - TBD
3. Realtime sockets - TBD (potentially Signal R)

## Docker/Containers

We'll be using Docker containers to package up our applicaiton as a portable applicaton artifact.