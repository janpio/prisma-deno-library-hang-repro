#!/usr/bin/env bash

set -eux

npm install

npx prisma generate

npx ts-node script.ts