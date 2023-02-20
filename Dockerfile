FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
COPY start.sh .
EXPOSE $PORT
CMD [ "node","index.js" ]
ENTRYPOINT [ "/app/start.sh" ]