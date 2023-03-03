#!/bin/bash

TACTIC=$(curl -X POST https://chessmadra.com/api/v1/tactic -H "Accept: application/json" -H "User-Agent: tactics-trainer-cli" -H "Content-Type: application/json" --data-binary @- <<DATA
{
  "rating_gte": 700,
  "rating_lte": 1000,
  "tags": []
}
DATA)

echo $TACTIC | jq