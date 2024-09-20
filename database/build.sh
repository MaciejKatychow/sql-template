#!/bin/bash
VERSION=0.1

docker build -t template-postgres:$VERSION -f ./Dockerfile .