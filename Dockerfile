FROM node: 19.9-alpine3.16

ENV PORT=3010

WORKDIR /app

#Install dev dependencies
COPY package*.json ./
RUN npm install


#Bundle App source
COPY ..
EXPOSE 3010
CMD ["npm", "start"]
