# IF YOU EVER LEAVE TAMPA!!!

- Change the DNS back to ISP in Google Wifi

# TODO

1. Reset dev device if not found?

Incase labels get crazy...
https://stackoverflow.com/questions/62010666/ansible-how-to-set-docker-container-labels-with-dynamic-key-names

[Resources]

- [Home Server Ansible Setup](https://github.com/davestephens/ansible-nas)

# New Containers to Setup
- piwigo
- mealie
- Authelia?
- Plex Requests
  - CouchPotato / Radar / Sonarr
- piwigo
- Workflow stuff? (n8n)

- Mealie - recipes (https://github.com/davestephens/ansible-nas/blob/master/roles/mealie/tasks/main.yml)
- Workflow stuff? - (n8n) - https://github.com/davestephens/ansible-nas/blob/master/roles/n8n/tasks/main.yml

# Nice to haves

- Authelia (SSO?)
- Code-Server (VS Code on NUC) - https://docs.linuxserver.io/images/docker-code-server
- Duplicacy - check pricing and stuff - 
    * https://github.com/davestephens/ansible-nas/tree/master/roles/duplicacy
    * https://duplicacy.com/buy.html
- linuxserver/duplicati (check this vs one above)
- Tatulli (plex stuff)
- Paperless

? Glances
? SMoke Ping
? Ntop ng




Maybe a fix for swag
upstream gotify {
  # Set the port to the one you are using in gotify
  server 127.0.0.1:1245;
}

server {
  listen 80;

  # Here goes your domain / subdomain
  server_name push.example.com;

  location / {
    # We set up the reverse proxy
    proxy_pass         http://gotify;
    proxy_http_version 1.1;

    # Ensuring it can use websockets
    proxy_set_header   Upgrade $http_upgrade;
    proxy_set_header   Connection "upgrade";
    proxy_set_header   X-Real-IP $remote_addr;
    proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header   X-Forwarded-Proto http;
    proxy_redirect     http:// $scheme://;

    # The proxy must preserve the host because gotify verifies the host with the origin
    # for WebSocket connections
    proxy_set_header   Host $http_host;

    # These sets the timeout so that the websocket can stay alive
    proxy_connect_timeout   1m;
    proxy_send_timeout      1m;
    proxy_read_timeout      1m;
  }
}