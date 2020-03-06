FROM dannyben/rush:0.5.0

WORKDIR /app
VOLUME /app

RUN echo 'export PS1="\\n\\n>> mdbook \W \$ "' >> /root/.bashrc
RUN rush snatch dannyben mdbook

ENTRYPOINT ["mdbook"]
