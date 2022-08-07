FROM node as base


# development stage
FROM base as develooment
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "run", "start:dev" ]
# production stage
FROM base as production
WORKDIR /app
COPY package*.json .
RUN npm install --only=production
COPY . .
EXPOSE 3000
CMD ["npm", "run", "start" ]


