#!/bin/bash
cd workspace
git clone https://github.com/instructure/canvas-lms.git
cd canvas-lms
bundle install


which yarn
node -v
yarn install --pure-lockfile || yarn install --pure-lockfile

