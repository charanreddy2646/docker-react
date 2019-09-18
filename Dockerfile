FROM node:alpine as builder 
WORKDIR '/Users/srija/Desktop/redis/visits/'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
COPY --from=builder /Users/srija/Desktop/redis/visits/build /usr/share/nginx/html