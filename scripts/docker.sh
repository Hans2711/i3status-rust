#!/bin/bash

# Count the number of running containers
running_containers=$(docker ps -q | wc -l)

# Output the result
echo "Containers: $running_containers"
