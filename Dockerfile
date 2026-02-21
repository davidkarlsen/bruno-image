FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@3.1.0
ENTRYPOINT ["bru"]
CMD ["run"]
