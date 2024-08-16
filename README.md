# Node

Docker File image for Applications that need NodeJs as environment

Based on Node alpine 20 (LTS)

> Latest its intended for LTS versions of NodeJs

Contains authentication for follow scopes (organizations) in npm local:

- `customer-experience`
- `architecture-it`
- `fontawesome`

## Correr en local

`docker build . -t react-andreani --build-arg token=<TUTOKEN> --build-arg fontawesome=<TOKEN_FONTAWESOME>`

# Use

```bash
FROM ghcr.io/architecture-it/node:latest AS example
```
