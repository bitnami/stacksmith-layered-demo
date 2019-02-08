# stacksmith-layered-demo
Demo application based on top of a base image also built with Stacksmith

This repository contains two main directories:

* `caddy`: A base image containing a [caddy](https://caddyserver.com/) web server
* `demo-app`: An "application" built on top of the `caddy` base image, consisting of a bunch of static files copied in the /var/www directory of the caddy server.

