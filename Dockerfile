FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@2.9.0
ENTRYPOINT ["bru"]
CMD ["run"]
