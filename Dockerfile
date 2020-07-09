FROM codercom/code-server:latest
RUN sudo apt-get update && \
  curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && \
  sudo apt-get -y install nodejs && \
  sudo apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
  curl -fsSL https://download.docker.com/linux/debian/gpg > /tmp/dkey; sudo apt-key add /tmp/dkey && \
  sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/debian \
  $(lsb_release -cs) \
  stable" && \
  sudo apt-get update && \
  sudo apt-get -y install docker-ce-cli && \
  sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
  sudo chmod +x /usr/local/bin/docker-compose