FROM node:14.16-stretch-slim as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm start

FROM nginx:latest as production-stage
COPY --from=build /app/build /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
