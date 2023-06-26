#!/bin/bash
PACK_NAME=ET-Mariphilia
MAJOR_VERSION=1
MINOR_VERSION=0
ITERATION_VERSION=10

fileName="$PACK_NAME-$MAJOR_VERSION.$MINOR_VERSION.$ITERATION_VERSION-dev.zip"

cd $PACK_NAME/

mv minecraft src

zip -r $fileName src

zip -m $fileName manifest.json

cd ..

mv ./$PACK_NAME/$fileName artifacts/