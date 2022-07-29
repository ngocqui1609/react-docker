FROM node:14.16-stretch-slim as build
COPY . /app
WORKDIR /app
RUN npm install && npm run build

FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html
