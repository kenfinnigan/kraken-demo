# kraken project

This project uses Quarkus, the Supersonic Subatomic Java Framework.

If you want to learn more about Quarkus, please visit its website: https://quarkus.io/ .

## Running PostgreSQL Database

```
docker run --ulimit memlock=-1:-1 -it --rm=true --memory-swappiness=0 \
           --name quarkus_test -e POSTGRES_USER=quarkus_test \
           -e POSTGRES_PASSWORD=quarkus_test -e POSTGRES_DB=quarkus_test \
           -p 5432:5432 postgres:10.5
```

## Running Kafka Cluster

As we're using Kafka as the message backbone for the application,
we need a cluster to process the messages.
Starting a development cluster can be done by running `docker-compose up` in the root directory.

## Running the application in dev mode

You can run your application in dev mode that enables live coding using:
```
./mvnw quarkus:dev
```

## Packaging and running the application

The application can be packaged using `./mvnw package`.
It produces the executable `kraken-1.0.0-SNAPSHOT-runner.jar` file in `/target` directory.
Be aware that it’s not an _uber-jar_ as the dependencies are copied into the `target/lib` directory.

The application is now runnable using `java -jar target/kraken-1.0.0-SNAPSHOT-runner.jar`.

## Creating a native executable

You can create a native executable using: `./mvnw package -Pnative`.

Or you can use Docker to build the native executable using: `./mvnw package -Pnative -Dquarkus.native.container-build=true`.

You can then execute your binary: `./target/kraken-1.0.0-SNAPSHOT-runner`

If you want to learn more about building native executables, please consult https://quarkus.io/guides/building-native-image-guide .