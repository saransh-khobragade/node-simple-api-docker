FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
COPY start.sh .
EXPOSE 8080
CMD [ "node","index.js" ]
ENTRYPOINT [ "/app/start.sh" ]