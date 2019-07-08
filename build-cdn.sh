#!/bin/bash
# Build script
# set -o errexit
set -euo pipefail

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm use 8
#chown -R jenkins /var/lib/jenkins
#su jenkins
cd src/app/client
version=$(jq '.version' package.json | sed 's/\"//g')
cdnUrl=$1
build_hash=$2
artifact_version=$3
npm install
npm run build-cdn -- --deployUrl $cdnUrl
export sunbird_portal_cdn_url=$cdnUrl
npm run inject-cdn-fallback
#chown -R jenkins ./
