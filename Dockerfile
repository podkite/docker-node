FROM node:10.16.3

# install ssh-agent
RUN which ssh-agent || ( apt-get update -y && apt-get install openssh-client -y )

# npm global deps
RUN npm install -g yarn
RUN npm install -g eslint
RUN npm install -g serverless
