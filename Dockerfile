FROM node:14-alpine 

ARG token
ARG fontawesome
ENV NPM_TOKEN ${token}
ENV NPM_FONTAWESOME_TOKEN ${fontawesome}

RUN apk add --no-cache libc6-compat && apk add git

RUN echo -e "\
@customer-experience:registry=https://npm.pkg.github.com/ \n\
@architecture-it:registry=https://npm.pkg.github.com/ \n\
@operations-innovations:registry=https://npm.pkg.github.com/ \n\
//npm.pkg.github.com/:_authToken=${NPM_TOKEN} \n\
@fortawesome:registry=https://npm.fontawesome.com/ \n\
//npm.fontawesome.com/:_authToken=${NPM_FONTAWESOME_TOKEN}" >> $HOME/.npmrc

# Avoid to install cypress binary in the container (when use cypress as a dev dependency)
ENV CYPRESS_INSTALL_BINARY=0
