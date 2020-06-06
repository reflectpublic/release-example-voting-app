#!/bin/sh

#
# Execute commands after Release environment is fully deployed.
#

Tag="release-tests"

echo "Triggering Reflect tests:"
echo "Tag=${Tag}"
echo "Host=${VOTE_INGRESS_HOST}"

#curl -v -X POST \
#  -H "X-API-KEY: ${REFLECT_API_KEY}" \
#  -d "{}" \
#  https://api.reflect.run/v1/tags/${Tag}/executions
