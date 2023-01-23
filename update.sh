#!/bin/bash

echo "Updating..."

find /home/customer/git/website-static/ \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i 's/https:\/\/stage.cdp.app/https:\/\/www.cdp.app/g' | xargs -0 sed -i 's/http:\/\/stage.cdp.app/http:\/\/www.cdp.app/g'

cd /home/customer/git/website-static/
/usr/bin/git pull origin main
/usr/bin/git add .
/usr/bin/git commit -m "Automated Commit"
/usr/bin/git push origin main --force
