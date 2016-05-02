curl --include --request POST http://localhost:3000/profiles \
  --header "Content-Type: application/json" \
  --data '{
    "profile": {
      "user_id": 3
    }
  }'

  curl --include --request PATCH http://localhost:3000/profiles/1 \
    --header "Content-Type: application/json" \
    --data '{
      "profile": {
        "pic": "test"
      }
    }'

curl --include --request GET http://localhost:3000/profiles/1
