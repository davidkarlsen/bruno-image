FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@3.0.1
ENTRYPOINT ["bru"]
CMD ["run"]
