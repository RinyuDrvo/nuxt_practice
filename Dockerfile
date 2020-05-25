FROM node:10.19-alpine

ENV PROJECT_ROOTDIR /app/

WORKDIR $PROJECT_ROOTDIR

COPY package.json yarn.lock $PROJECT_ROOTDIR

RUN apk update && \
  apk add git && \
  apk add --no-cache curl && \
  curl -o- -L https://yarnpkg.com/install.sh | sh && \
  yarn global add @vue/cli

COPY . $PROJECT_ROOTDIR

EXPOSE 3000
ENV HOST 0.0.0.0

CMD ["yarn", "dev"]