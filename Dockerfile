FROM codercom/code-server:latest
RUN sudo apt-get update \
  && curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
  && sudo apt-get install nodejs -y