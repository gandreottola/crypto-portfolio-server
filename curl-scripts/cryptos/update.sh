#!/bin/bash

API="http://localhost:4741"
URL_PATH="/cryptos"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "crypto": {
      "name": "'"${NAME}"'",
      "price": "'"${PRICE}"'",
      "buy_date": "'"${BUYDATE}"'",
      "amount": "'"${AMOUNT}"'"
    }
  }'

echo
