#!/usr/bin/env bash

set -eux

npm install

npx prisma generate

export DEBUG="*"

npx ts-node script.ts