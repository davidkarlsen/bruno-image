FROM node:lts-bookworm
RUN npm install -g @usebruno/cli@1.3.0
ENTRYPOINT ["bru"]
CMD ["run"]
