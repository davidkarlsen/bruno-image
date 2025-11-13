FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@2.14.1
ENTRYPOINT ["bru"]
CMD ["run"]
