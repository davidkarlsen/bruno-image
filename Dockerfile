FROM node:lts-bookworm
RUN npm install -g @usebruno/cli@1.11.0
ENTRYPOINT ["bru"]
CMD ["run"]
