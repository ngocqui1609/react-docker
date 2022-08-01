FROM node:14.16.0-stretch-slim as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
CMD ["npm", "start"]

# production stage
FROM nginx:1.17-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
