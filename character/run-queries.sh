#!/bin/bash

API_URL="https://rickandmortyapi.com/graphql"

for i in 1 2 3 4
do
  echo "Fetching character $i..."
  RESPONSE=$(curl -s -X POST $API_URL \
    -H "Content-Type: application/json" \
    -d "{\"query\":\"{ character(id: $i) { id name status species type gender } }\"}")

  node -e "console.log(JSON.stringify(JSON.parse(process.argv[1]), null, 2))" "$RESPONSE" > character-id-$i-output.json
done

echo "✅ All characters fetched & pretty-printed!"
