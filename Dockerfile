FROM node:lts-bookworm
RUN npm install -g @usebruno/cli
ENTRYPOINT ["bru"]
CMD ["run"]