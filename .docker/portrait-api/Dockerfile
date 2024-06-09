FROM ruby:3.3.2

ENV LANG=C.UTF-8\
    LANGUAGE=C.UTF-8\
    LC_ALL=C.UTF-8\
    TZ=America/Sao_Paulo
    
RUN groupadd -r portraitapp && useradd -m -g portraitapp portraitapp
RUN mkdir /gems && chown portraitapp:portraitapp /gems -R

RUN apt-get update && \
    apt-get install -y nano && \
    rm -rf /var/lib/apt/lists/*

VOLUME /gems
VOLUME /portrait

USER portraitapp

# port fro http app server
EXPOSE 3000

ENTRYPOINT ["/portrait/.docker/portrait-api/docker-entrypoint.sh"]

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
