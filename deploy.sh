#!/usr/bin/env bash
set -e

if [[ -z "$ZEABUR_TOKEN" ]]; then
  echo "No ZEABUR_TOKEN found. Run interactive deploy mode."
  npx zeabur@latest login
  npx zeabur@latest deploy
else
  echo "Deploying with ZEABUR_TOKEN..."
  npx zeabur@latest login --token "$ZEABUR_TOKEN"
  npx zeabur@latest deploy --yes
fi
