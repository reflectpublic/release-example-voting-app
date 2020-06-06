#!/bin/sh

#
# Execute commands after Release environment is fully deployed.
#

Tag="release-tests"

echo "=== Triggering Reflect tests ==="
echo "Tag=${Tag}"
echo "Host=${VOTE_INGRESS_HOST}"

curl --silent -X POST \
  -H "X-API-KEY: ${REFLECT_API_KEY}" \
  -d "{ \
    \"overrides\": { \
      \"hostnames\": [{ \
        \"original\": \"vote-staging-reflect-voting-app.releaseapp.io\", \
        \"replacement\": \"${VOTE_INGRESS_HOST}\" \
      }] \
    } \
  }" \
  https://api.reflect.run/v1/tags/${Tag}/executions
