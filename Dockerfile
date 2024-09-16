FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@1.28.0
ENTRYPOINT ["bru"]
CMD ["run"]
