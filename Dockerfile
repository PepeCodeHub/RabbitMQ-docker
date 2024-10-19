# Stage 1: Build stage
FROM rabbitmq:management-alpine AS builder

# Set the working directory
WORKDIR /app

# Create a non-root user for RabbitMQ
RUN addgroup -S rabbitmqgroup && adduser -S rabbitmquser -G rabbitmqgroup

# Copy the RabbitMQ initialization script
COPY init-rabbitmq.sh .

# Stage 2: Final stage
FROM rabbitmq:management-alpine

# Set the working directory for RabbitMQ
WORKDIR /var/lib/rabbitmq

# Create the non-root user in the final stage
RUN addgroup -S rabbitmqgroup && adduser -S rabbitmquser -G rabbitmqgroup

# Set environment variables for RabbitMQ
ENV RABBITMQ_DEFAULT_USER=${RABBITMQ_DEFAULT_USER}
ENV RABBITMQ_DEFAULT_PASS=${RABBITMQ_DEFAULT_PASS}
ENV RABBITMQ_USER=${RABBITMQ_USER}
ENV RABBITMQ_PASSWORD=${RABBITMQ_PASSWORD}

# Copy the initialization script from the builder stage
COPY --from=builder /app/init-rabbitmq.sh /usr/local/bin/init-rabbitmq.sh

# Make the script executable
RUN chmod +x /usr/local/bin/init-rabbitmq.sh

# Set ownership of RabbitMQ data directory
RUN chown -R rabbitmquser:rabbitmqgroup /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq

# Expose the default RabbitMQ and management ports
EXPOSE 5672 15672

# Switch to the non-root user
USER rabbitmquser

# Run the initialization script and start RabbitMQ
ENTRYPOINT ["/bin/sh", "-c", "/usr/local/bin/init-rabbitmq.sh & rabbitmq-server"]

# Optional health check to ensure RabbitMQ is running correctly
# HEALTHCHECK --interval=0 --timeout=10s --start-period=3s CMD /usr/local/bin/init-rabbitmq.sh || exit 1
