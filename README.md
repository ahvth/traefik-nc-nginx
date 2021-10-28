## Foreword

This docker-compose file will deploy traefik, nextcloud and nginx onto a web server. nginx will by default serve a static website that should be deployed in the `website` folder.

The examples folder includes templates for the necessary nc_secrets.env file and also a template for configuring nextcloud to use S3-compatible object storage (see instructions below for more information).

## Dependencies

- Docker
- `docker-compose`

## Installation

### Basic Installation

0. Run as root or make sure that the current user is permitted to run docker commands
1. Fill out the `nc_secrets.env` with secure passwords
2. Fill out the docker-compose file with the appropriate domain names. Optionally, uncomment line 18 to use the staging server whiile testing your deployment (to avoid exceeding the number of cert requests from letsencrypt)
3. Deploy with `./deploy.sh`
4. Add `'overwriteprotocol' => 'https',` to `nextcloud/config.php` and ensure that the URL in `'overwrite.cli.url'` is prefixed with `https://`

### Configure Nextcloud to use S3-compatible object storage as it's primary storage

> IMPORTANT! If you plan to use S3-compatible object storage, don't complete the setup yet!

1. Fill out `storage.config.php` with your bucket's details.
2. Copy storage.config.php into `nextcloud/config`

The contents of this repository are governed by the GPL License.
