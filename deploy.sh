# #!/usr/bin/env bash

# cd `dirname $BASH_SOURCE`

docker-compose down
docker-compose pull
docker-compose up -d

# cd - > /dev/null
