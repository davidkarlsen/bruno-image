FROM node:lts-trixie-slim
RUN npm install -g @usebruno/cli@3.1.3
ENTRYPOINT ["bru"]
CMD ["run"]
