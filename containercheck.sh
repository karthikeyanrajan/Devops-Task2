#!/bin/bash
# Get the container ID of the reactjs-demo:latest image
container_id=$(docker ps -aq --filter ancestor=reactjs-demo:latest)
# Check if the container ID is not empty
if [ -n "$container_id" ]; then
  # Stop and remove the container
  docker stop $container_id && docker rm $container_id
  echo "Container removed successfully"
else
  # No container found with the given image name and tag
  echo "No container found with image name reactjs-demo and tag latest"
fi
