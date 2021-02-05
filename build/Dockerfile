FROM node:14 AS build

RUN mkdir -p /app_dir/app
WORKDIR /app_dir

# Install app dependencies
COPY app/package*.json /app_dir/app/
RUN npm install

# Copy source code from local to working dir isnide docker image
COPY . /app_dir/

# nodejs runtime provided by google
FROM gcr.io/distroless/nodejs:14

COPY --from=build /app_dir /app_dir

WORKDIR /app_dir

# Already knows its nodejs
CMD ["app/app.js"]
