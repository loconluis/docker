FROM node:10

COPY [".", "/usr/src/"]

WORKDIR /usr/src

COPY package.json package-lock.json /usr/src/
RUN npm install

COPY . /usr/src/

EXPOSE 3000

CMD ["npm", "start"]
