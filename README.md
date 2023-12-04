# Lab Server Configuration

<div align="center">

  [![Portainer](https://uptime.kurokeita.dev/api/badge/3/status)](https://status.kurokeita.dev/) [![Portainer](https://uptime.kurokeita.dev/api/badge/3/uptime)](https://status.kurokeita.dev/) [![Portainer](https://uptime.kurokeita.dev/api/badge/3/cert-exp)](https://status.kurokeita.dev/) [![Portainer](https://uptime.kurokeita.dev/api/badge/3/ping)](https://status.kurokeita.dev/) [![Portainer](https://uptime.kurokeita.dev/api/badge/3/avg-response)](https://status.kurokeita.dev/)

</div>

## CloudFlare Tunnel configuration

* Get the tunnel token for CloudFlare from CloudFlare Zero Trust dashboard.
* `cp .env.example .env`
* Copy the token to the `TUNNEL_TOKEN` variable inside `.env`.

## ddclient configuration

* `cp ddclient/ddclient.conf.example ddclient/ddclient.conf`
* Change the value of `top_domain`, `api_token`, `domain_that_need_ddns`.

## Start the lab server

* `docker compose up -d`
