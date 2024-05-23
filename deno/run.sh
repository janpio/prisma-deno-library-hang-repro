#!/usr/bin/env bash

curl -fsSL https://deno.land/x/install/install.sh | sh
alias deno='/home/gitpod/.deno/bin/deno'
deno --version

version=$( jq -r  '.devDependencies.prisma' package.json ) 
deno run -A npm:prisma@$version generate

deno run -A script.ts