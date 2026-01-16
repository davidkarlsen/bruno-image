FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@3.0.0
ENTRYPOINT ["bru"]
CMD ["run"]
