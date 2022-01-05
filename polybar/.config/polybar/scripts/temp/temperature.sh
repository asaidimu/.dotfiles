#!/usr/bin/env sh

API_KEY=dddb6029be02bafe27a0150b59516ca4
URL="https://api.openweathermap.org/data/2.5/weather?q=Limuru,ke&units=metric&appid=${API_KEY}"
curl -s $URL | jq ".main.feels_like"
