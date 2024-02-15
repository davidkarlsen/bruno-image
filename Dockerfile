FROM node:lts-bookworm
RUN npm install -g @usebruno/cli@1.9.0
ENTRYPOINT ["bru"]
CMD ["run"]
