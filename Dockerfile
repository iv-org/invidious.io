FROM docker.io/library/node:16 as build
COPY . .
RUN npm install
RUN npm run build

FROM docker.io/library/nginx:alpine
COPY --from=build /public/ /usr/share/nginx/html/
# TheFrenchGhosty: The videos/ folder has been removed, no idea why it's created
RUN rm -rf /usr/share/nginx/html/videos
