### Using node.js base image
FROM node:14
### Defining working directory
WORKDIR /app
### Using the root user to execute the container image
USER root
### Copying the node.js dependency file
COPY package.json /app/
### Installing npm for nodejs
RUN npm Install 
### Copying all application files to the work directory
COPY ./ ./
### Exposing the port number
EXPOSE 80
### Executing web application
CMD [ ""node", /app/server.js" ]



