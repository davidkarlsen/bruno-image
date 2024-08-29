FROM node:lts-bookworm-slim
RUN npm install -g @usebruno/cli@1.26.2
ENTRYPOINT ["bru"]
CMD ["run"]
