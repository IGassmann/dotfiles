#! /usr/bin/env bash

IGASSMANN_DIR=~/Repositories/IGassmann

# Create repository directories
mkdir -p $IGASSMANN_DIR

# Clone Github repositories
echo "Cloning repositories..."

# IGassmann
git clone git@github.com:IGassmann/personal-website.git $IGASSMANN_DIR/personal-website
git clone git@github.com:IGassmann/stir-pitch-website.git $IGASSMANN_DIR/stir-pitch-website
git clone git@github.com:IGassmann/web-img-optimizer.git $IGASSMANN_DIR/web-img-optimizer
git clone git@github.com:IGassmann/remark-directive-rehype $IGASSMANN_DIR/remark-directive-rehype Public
git clone git@github.com:IGassmann/nodejs-api.git $IGASSMANN_DIR/nodejs-api
git clone git@github.com:IGassmann/web-app-template.git $IGASSMANN_DIR/web-app-template