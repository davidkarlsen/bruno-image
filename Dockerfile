FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@1.33.0
ENTRYPOINT ["bru"]
CMD ["run"]
