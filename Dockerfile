FROM postgres:14

# Set environment variables
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres

# Create a directory for initialization scripts
RUN mkdir -p /docker-entrypoint-initdb.d

# The container will automatically run any *.sql files in this directory
# when the container is first created

# Expose the PostgreSQL port
EXPOSE 5432

# Set the default command to run when starting the container
CMD ["postgres"]
