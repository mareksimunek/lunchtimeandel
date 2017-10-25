FROM node:6
COPY . .
EXPOSE 3000
EXPOSE 27017
RUN apt-get update && apt-get install -y --no-install-recommends make mongodb curl openjdk-7-jre

CMD ["mkdir", "-p", "/data/db"]
CMD ["make" ,"install-dependencies"]
CMD ["make" ,"run"]
