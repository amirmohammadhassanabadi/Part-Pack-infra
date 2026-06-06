if [ -n "$DEPLOY_SERVICE" ]; then
  echo "Deploying single service: $DEPLOY_SERVICE"
  docker compose up -d --no-deps --force-recreate "$DEPLOY_SERVICE"
else
  echo "Deploying full stack (production tag)"
  docker compose up -d --force-recreate
fi
