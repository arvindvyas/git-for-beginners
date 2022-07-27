#!/bin/bash
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
 echo "i am here"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  brew install pre-commit
  brew install gitleaks
  touch .pre-commit-config.yaml
  echo 'repos:
  - repo: https://github.com/zricethezav/gitleaks
    rev: v8.2.0
    hooks:
      - id: gitleaks
' > .pre-commit-config.yaml
  pre-commit install

else
        echo "$OSTYPE"
fi
