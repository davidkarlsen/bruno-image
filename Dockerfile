FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@2.10.1
ENTRYPOINT ["bru"]
CMD ["run"]
