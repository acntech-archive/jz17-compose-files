#! /bin/bash

# Exit on error
set -e

export MILJO_NAVN=${1}
export FRONTEND_BRANCH=${4}
export FRONTEND_TAG=${5}
export BACKEND_BRANCH=${2}
export BACKEND_TAG=${3}

echo "Deploy starter, fikk disse input parametre:"
echo "Miljo: ${MILJO}"
echo "Frontend: ${FRONTEND_BRANCH}:${FRONTEND_TAG}"
echo "Backend: ${BACKEND_BRANCH}:${BACKEND_TAG}"
echo

# Miljøvariabler er satt opp, kjør docker-compose
docker-compose -f /home/rundeck/jz17-compose-files/demo-compose.yml -p ${MILJO_NAVN} up -d
