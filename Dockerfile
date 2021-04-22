FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . /usr/src/app

#ENV NODE_ENV=production


#RUN yarn install --production
RUN yarn install 

RUN yarn build

ENV PORT 3000

EXPOSE 3000
CMD ["/usr/src/app/start-prod"]
