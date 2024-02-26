FROM node:lts-bookworm
RUN npm install -g @usebruno/cli@1.9.1
ENTRYPOINT ["bru"]
CMD ["run"]
