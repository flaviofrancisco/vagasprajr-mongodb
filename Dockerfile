FROM mongo

ARG MONGO_INITDB_ROOT_USERNAME
ARG MONGO_INITDB_ROOT_PASSWORD

RUN echo $MONGO_INITDB_ROOT_PASSWORD

# Set environment variables for MongoDB
ENV MONGO_INITDB_ROOT_USERNAME=${MONGO_INITDB_ROOT_USERNAME} \
    MONGO_INITDB_ROOT_PASSWORD=${MONGO_INITDB_ROOT_PASSWORD}

# Set the data directory for MongoDB
ENV MONGO_DATA_DIR=/data/db

# Create a volume for the MongoDB data
VOLUME /root/vagasprajr/vagasprajr/docker/mongo/db

VOLUME /backup

# Expose the default MongoDB port
EXPOSE 27017

# Start MongoDB when the container starts
CMD ["mongod"]

