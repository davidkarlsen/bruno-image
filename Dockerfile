FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@1.38.3
ENTRYPOINT ["bru"]
CMD ["run"]
