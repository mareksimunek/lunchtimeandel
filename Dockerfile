FROM node:6
COPY . .
EXPOSE 3000
RUN apt-get update && apt-get install -y --no-install-recommends make mongodb curl openjdk-7-jre

RUN mkdir -p /data/db
RUN make install-dependencies
CMD mongod & make run
