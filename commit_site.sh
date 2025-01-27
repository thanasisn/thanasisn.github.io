#!/bin/bash
## created on 2024-01-30


#### Pull libratran guide in

# cp -r ../Libradtran_guide/_book  ./_site/libratran_guide


#### Have to run this to publish the site

cd "_site" || exit

git init

find . -type f -not -path '*/\.git/*' -print0 |\
              xargs -t -0 git add -f

git commit -uno -a -m "Commit $(date +'%F %R')"

git branch -M main

git remote add origin https://github.com/thanasisn/thanasisn.github.io.git

git push -f -u origin main

## end coding
exit 0 
