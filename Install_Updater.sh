

#!/bin/bash

until [ -e /Library/PEA/agent/ITProtector.app ]; do
  sleep 1
done
curl -k https://static.brasilprev.corp/MacOS/preconfig.json --output /tmp/preconfig.json
curl -k https://static.brasilprev.corp/MacOS/observeit-autoupdater-OSX-2.0.0.26.sh --output /tmp/observeit-autoupdater-OSX-2.0.0.26.sh
chmod +x /tmp/observeit-autoupdater-OSX-2.0.0.26.sh
xattr -c /tmp/observeit-autoupdater-OSX-2.0.0.26.sh
cd /tmp

sudo ./observeit-autoupdater-OSX-2.0.0.26.sh -- -i -c /tmp/preconfig.json
