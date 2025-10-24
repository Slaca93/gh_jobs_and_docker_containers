FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.ydwztn7.mongodb.net
ENV MONGODB_USERNAME db_user_gh_actions
ENV MONGODB_PASSWORD ml3JiFMrSd6XeUpb

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]