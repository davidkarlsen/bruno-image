FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@1.40.0
ENTRYPOINT ["bru"]
CMD ["run"]
