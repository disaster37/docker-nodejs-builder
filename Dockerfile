FROM node:5.7.1
MAINTAINER Sebastien Langoureaux <linuxworkgroup@hotmail.com>



# Install nodejs lib on global
RUN npm install -g async watchman nodemon node-gyp yo grunt-cli gulp-cli bower generator-angular-fullstack

# Add script to Build
COPY assets/compile.sh /tmp/compile.sh
RUN chmod +x /tmp/compile.sh

# Add user
RUN useradd -m dev
RUN mkdir -p /node/src
RUN chown -R dev /node/src

WORKDIR /node/src


USER dev

CMD /tmp/compile.sh
