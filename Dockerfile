FROM node:14-alpine 

ARG token
ARG fontawesome
ENV NPM_TOKEN ${token}
ENV NPM_FONTAWESOME_TOKEN ${fontawesome}

RUN apk add --no-cache libc6-compat && apk add git

RUN npm config set @operations-innovations:registry=https://npm.pkg.github.com/ @architecture-it:registry=https://npm.pkg.github.com/ @customer-experience:registry=https://npm.pkg.github.com/ //npm.pkg.github.com/:_authToken=${NPM_TOKEN}
RUN npm config set @fortawesome:registry=https://npm.fontawesome.com/ //npm.fontawesome.com/:_authToken=${NPM_FONTAWESOME_TOKEN}

# Avoid to install cypress binary in the container (when use cypress as a dev dependency)
ENV CYPRESS_INSTALL_BINARY=0
