#!/bin/sh

configure_npm_registry() {
    if [ ! -z "$NPM_REGISTRY" ]; then
        npm config set registry "$NPM_REGISTRY"
    fi
    if [ ! -z "$NPM_USER" ] && [ ! -z "$NPM_PASSWORD" ] && [ ! -z "$NPM_EMAIL" ]; then
        /npm-login.sh "$NPM_USER" "$NPM_PASSWORD" "$NPM_EMAIL"
    fi
}

configure_npm_registry

npm install && npm run test
