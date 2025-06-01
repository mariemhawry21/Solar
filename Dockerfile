FROM node:18-alpine3.17

WORKDIR /usr/app

COPY package*.json /usr/app/

RUN npm install

COPY . .

ENV MONGO_URI=mongodb+srv://mariemmostafa:mariemmostafa123@cluster0.wqlzv6i.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0
ENV MONGO_USERNAME=mariemmostafa
ENV MONGO_PASSWORD=mariemmostafa123

EXPOSE 3000

CMD [ "npm", "start" ]