#!/bin/bash

zipfile=${1:-hello}

GOOS=linux GARCH=amd64 go build -o main lambda.go
zip $zipfile main

echo "$zipfile.zip is generated"
