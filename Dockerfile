FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@1.34.1
ENTRYPOINT ["bru"]
CMD ["run"]
