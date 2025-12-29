#!/bin/bash

# Fetch Bitcoin price in USD from CoinGecko API
response=$(curl -s "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd")

# Extract only the numeric price using grep and sed
price=$(echo "$response" | grep -o '"usd":[0-9.]*' | sed 's/"usd"://')

# Print the price
echo "$price"

# Save the price to a file
echo "$price" > bitcoin_price.txt



./
