# Nimbus Docker

Provides a `docker-compose` environment for running Nimbus. This repository is inspired by [lighthouse-docker](https://github.com/sigp/lighthouse-docker) from sigp.

The following features are available:

- A beacon node.
- A validator client (optional) that connects to the beacon node.

## Usage

`$ docker-compose up`

A `.nimbus` directory will be created in the repository root which contains the beacon node database and other Nimbus files.

## Configuration

The docker-compose file requires that a `.env` file be present in this
directory. The `default.env` file provides a template and can be copied `.env`:

```bash
$ cp default.env .env
```

Failure to create an `.env` file will result in the following error:

```
ERROR: Couldn't find env file: /home/username/nimbus-docker/.env
```
