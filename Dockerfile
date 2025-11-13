FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@2.14.2
ENTRYPOINT ["bru"]
CMD ["run"]
