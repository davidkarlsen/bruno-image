FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@2.4.0
ENTRYPOINT ["bru"]
CMD ["run"]
