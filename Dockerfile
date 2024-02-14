FROM node:latest
LABEL "project.home"="https://github.com/NekoSuneVR/avalon"
RUN git clone git://github.com/NekoSuneVR/avalon
WORKDIR /avalon
RUN npm install
EXPOSE 6001
EXPOSE 3001
ENV DB_URL 'mongodb://172.18.0.1:27017'
ENV DB_NAME 'avalon'
ENV NODE_OWNER 'dtube'
ENV NODE_OWNER_PUB 'dTuBhkU6SUx9JEx1f4YEt34X9sC7QGso2dSrqE8eJyfz'
ENV NODE_OWNER_PRIV '34EpMEDFJwKbxaF7FhhLyEe3AhpM4dwHMLVfs4JyRto5'
ENV PEERS 'ws://s10.fso.ovh:6002,ws://avalon.d00k13.com:6001,ws://194.233.75.39:6001,ws://34.65.228.228:6001,ws://avalon.d.tube:6001,ws://35.203.60.208:6001'
CMD ["npm", "start"]
