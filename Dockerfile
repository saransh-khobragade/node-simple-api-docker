FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
COPY start.sh .
EXPOSE 8080
ENTRYPOINT [ "/app/start.sh" ]