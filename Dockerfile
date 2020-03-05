FROM ubuntu

# Environment
ENV TERM linux
ENV PS1 "\n\n>> mdbook \W \$ "
WORKDIR /app

# Install dependencies for Rush
RUN apt-get update -y && apt-get install -y curl git sudo

# Install Rush
RUN curl -s \
    https://raw.githubusercontent.com/DannyBen/rush-cli/master/rush > \
    /usr/local/bin/rush && \
    chmod +x /usr/local/bin/rush

# Install mdbook
RUN rush clone dannyben --name default && \
    rush get mdbook

# Boom
VOLUME /app
ENTRYPOINT ["mdbook"]
