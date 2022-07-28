FROM ubuntu
RUN apt-get update
RUN apt-get -y install git
RUN git clone https://github.com/thaquib/react-app-concourse.git
WORKDIR /react-app-concourse
RUN apt install -y nodejs
RUN apt install -y npm
RUN npm i
CMD ["npm", "run", "start"]