FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@1.36.1
ENTRYPOINT ["bru"]
CMD ["run"]
