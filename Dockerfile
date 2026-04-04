FROM node:lts-trixie-slim
RUN npm install -g @usebruno/cli@3.2.2
ENTRYPOINT ["bru"]
CMD ["run"]
