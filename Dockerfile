FROM node
# create a working directory
WORKDIR /app
# copy the package file from the current directory to the working directory
COPY package*.json ./
# install the package
RUN npm install
# copy the all the rest file from the current directory to the working directory
COPY . .
# expose the port 3000
# we can use ENV to set the port number in the dockerfile
# ENV PORT 3000
# EXPOSE $PORT
EXPOSE 3000
# run the app in development mode with hot reloading
CMD ["npm", "run", "start:dev" ]


