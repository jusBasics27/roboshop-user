FROM        node:20
RUN         mkdir /app
RUN         useradd -d /app roboshop
WORKDIR     /app
RUN         chown roboshop:roboshop /app
USER        roboshop
COPY        package.json server.js /app/
RUN         npm install
COPY        run.sh /app
# ENTRYPOINT  ["node", "/app/server.js"]
ENTRYPOINT  ["bash", "/app/run.sh"]