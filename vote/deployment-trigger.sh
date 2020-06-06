#
# Execute commands after Release environment is fully deployed.
#

Tag="release-tests"
echo "Executing Reflect tests for tag: $Tag"
curl -v -X POST \
  -H "X-API-KEY: ${REFLECT_API_KEY}" \
  -d "{}" \
  https://api.reflect.run/v1/tags/${Tag}/executions
