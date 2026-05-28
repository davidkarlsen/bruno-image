FROM node:lts-trixie-slim
RUN npm install -g @usebruno/cli@3.4.2
ENTRYPOINT ["bru"]
CMD ["run"]
