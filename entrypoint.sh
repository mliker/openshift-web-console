#!/bin/bash

if [ -z ${APPMIXER_API_URL+x} ]; then
  sed -i "s#http://localhost:2200#$APPMIXER_API_URL#g" js/*
fi

nginx -g daemon off;
