# @vagasprajr MongoDB

This respository has the docker-compose file to create a MongoDB container and be used locally for development purposes alogn with the api project.

# Create your .env

Copy the .env.example file to .env and fill the values with your own.

```bash
cp .env.example .env
```
Update the values with your own.

```bash
MONGO_INITDB_ROOT_USERNAME=root
MONGO_INITDB_ROOT_PASSWORD=<your_password>
```

## How to use

1. Clone the repository
2. Run the following command to start the MongoDB container
```bash
docker-compose up -d
```

Once you have container up and running, you can connect to the MongoDB using the following connection string:

```bash
mongodb://root:<your_password>@localhost:27017
```