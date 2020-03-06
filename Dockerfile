FROM dannyben/rush

# Environment
ENV PS1 "\n\n>> mdbook \W \$ "
WORKDIR /app

# Install mdbook
RUN rush clone dannyben --name default && \
    rush get mdbook

# Boom
VOLUME /app
ENTRYPOINT ["mdbook"]
