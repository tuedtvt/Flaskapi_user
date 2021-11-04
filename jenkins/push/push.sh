#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGEFLASK="flaskapiuser:latest"
IMAGEMONGODB="mongodb:latest"

echo "** Logging in docker hub ***"
docker login -u tuedtvt -p $PASS

echo "** taging flask image ***"
docker tag $IMAGEFLASK tuedtvt/$IMAGEFLASK
echo "*** Pushing flask image  ***"
docker push tuedtvt/$IMAGEFLASK

echo "** taging mongodb image ***"
docker tag $IMAGEMONGODB tuedtvt/$IMAGEMONGODB
echo "*** Pushing mongodb image  ***"
docker push tuedtvt/$IMAGEMONGODB

echo "*** Done  ***"