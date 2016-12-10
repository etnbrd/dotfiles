body='{
"request": {
  "message": "Pushed dotfiles trigger build of devenv",
  "branch":"master"
}}'

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token $token" \
  -d "$body" \
  https://api.travis-ci.org/repo/etnbrd%2Fdevenv-base/requests
