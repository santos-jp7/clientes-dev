FROM node:18

WORKDIR /opt/app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
CMD npm start