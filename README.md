# Lab Server Configuration

## CloudFlare Tunnel configuration

* Get the tunnel token for CloudFlare from CloudFlare Zero Trust dashboard.
* `cp .env.example .env`
* Copy the token to the `TUNNEL_TOKEN` variable inside `.env`.

## ddclient configuration

* `cp ddclient/ddclient.conf.example ddclient/ddclient.conf`
* Change the value of `top_domain`, `api_token`, `domain_that_need_ddns`.

## Start the lab server

* `docker compose up -d`
