FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@2.15.1
ENTRYPOINT ["bru"]
CMD ["run"]
