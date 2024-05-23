#!/usr/bin/env bash

npm install

npx prisma generate

npx ts-node script.ts