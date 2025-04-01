# gorm-postgresql

A GORM managed postgresql database with Atlas integration for managing migrations 

## Schema Changes & Migration Generation

### Prerequisites:
- [Install Atlas](https://atlasgo.io/getting-started/)
- [Install Docker](https://docs.docker.com/engine/install/)


### Guide

With the prerequisites met we can now do the following

1. Update the GORM Models in the [models folder](./models/) file to reflect desired schema changes
2. Run `atlas migrate diff --env local` to generate a `migration.sql` file that will contain the changes made to the schema in a `sql` format

## Local testing
Using Docker command below you can test deployment to an ephemeral DB.

```
docker run -d --name db -p 5431:5432 -e POSTGRES_PASSWORD=pass postgres:16.2
```



