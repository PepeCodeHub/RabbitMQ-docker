#!/usr/bin/env bash

echo "Initializing RabbitMQ with custom configurations..."

# Retry mechanism for awaiting RabbitMQ startup
max_retries=10
retry_count=0
retry_interval=5

while ! rabbitmqctl await_startup; do
  retry_count=$((retry_count + 1))
  echo "Waiting for RabbitMQ to start... Attempt $retry_count of $max_retries"
  
  if [ "$retry_count" -ge "$max_retries" ]; then
    echo "Error: RabbitMQ failed to start after $max_retries attempts."
    exit 1
  fi

  sleep $retry_interval
done

# Enable RabbitMQ management plugin
rabbitmq-plugins enable rabbitmq_management

# Check if environment variables are set
if [ -z "$RABBITMQ_USER" ] || [ -z "$RABBITMQ_PASSWORD" ]; then
  echo "Error: RABBITMQ_USER or RABBITMQ_PASSWORD is not set."
  exit 1
fi

# Add a user and set permissions
rabbitmqctl add_user "$RABBITMQ_USER" "$RABBITMQ_PASSWORD"
rabbitmqctl set_user_tags "$RABBITMQ_USER" monitoring
rabbitmqctl set_permissions -p / "$RABBITMQ_USER" ".*" ".*" ".*"

echo "RabbitMQ read-only user '$RABBITMQ_USER' has been created."

echo "RabbitMQ initialization complete."