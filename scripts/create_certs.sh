#!/usr/bin/env bash

source ../.env

# Create the cloudflare dns configuration file
if [ -f "token.ini" ]; then
    rm token.ini
fi

echo "dns_cloudflare_api_key = $CLOUDFLARE_DNS_API_TOKEN" > token.ini
chmod 600 token.ini

while getopts d: flag
do
  case "${flag}" in
    d) domain=${OPTARG};;
  esac
done

# issue new certificate
certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials ./token.ini \
  -d $domain

rm token.ini

if [ -d "../out/certs/$domain" ]
then
  mkdir ../out/certs/$domain
fi

# copy the generated certs to the out directory
cp -Lrf /etc/letsencrypt/live/$domain/. ../out/certs/$domain