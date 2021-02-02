FROM node

WORKDIR /app

COPY . /app
# first refers to copy all the files in this directory (excluding Dockerfile)
# second refers to what directory to copy it to

RUN npm install

EXPOSE 80

CMD ["node", "server.js"]
# command that runs when we start a container, not when an image is created.