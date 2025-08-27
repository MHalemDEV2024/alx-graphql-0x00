#!/bin/bash

API_URL="https://rickandmortyapi.com/graphql"

for i in 1 2 3 4
do
  echo "Fetching characters page $i..."

  RESPONSE=$(curl -s -X POST $API_URL \
    -H "Content-Type: application/json" \
    -d "{\"query\":\"{ characters(page: $i) { results { id name status image } } }\"}")

  # Pretty-print JSON with Node.js
  node -e "console.log(JSON.stringify(JSON.parse(process.argv[1]), null, 2))" "$RESPONSE" > characters-page-$i-output.json
done

echo "✅ All characters pages fetched & saved!"
