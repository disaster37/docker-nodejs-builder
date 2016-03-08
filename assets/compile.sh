#!/bin/bash

set -e

# Set directory to where we expect code to be
cd /node/src

echo "Downloading npm dependencies"
npm update

echo "Run test"
grunt test


echo "Building source"
grunt build
