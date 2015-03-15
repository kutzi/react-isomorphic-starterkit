FROM node:0.12-wheezy

RUN apt-get update && apt-get install less

# install react-isomorphic-starterkit
#RUN git clone https://github.com/RickWong/react-isomorphic-starterkit.git
COPY . react-isomorphic-starterkit
WORKDIR react-isomorphic-starterkit
RUN npm install -g supervisor webpack webpack-dev-server concurrently
RUN npm install

