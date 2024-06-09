FROM node:16.15.0
# This image have an user `node` created with id 1000

USER node

EXPOSE 3000

VOLUME /portrait

ENTRYPOINT ["/portrait/.docker/portrait-app/docker-entrypoint.sh"]

CMD ["npm", "start"]

