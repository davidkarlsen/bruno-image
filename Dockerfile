FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@2.1.0
ENTRYPOINT ["bru"]
CMD ["run"]
