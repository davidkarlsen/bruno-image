FROM node:lts-bookworm
RUN npm install -g @usebruno/cli@1.9.2
ENTRYPOINT ["bru"]
CMD ["run"]
