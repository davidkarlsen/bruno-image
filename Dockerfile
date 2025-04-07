FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@2.0.0
ENTRYPOINT ["bru"]
CMD ["run"]
