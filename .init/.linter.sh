#!/bin/bash
cd /home/kavia/workspace/code-generation/gourmet-delivery-platform-225409-225427/driver_courier_app
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

