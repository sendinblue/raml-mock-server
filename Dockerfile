FROM node:12.18.1
RUN npm install -g osprey-mock-service
WORKDIR /raml

VOLUME /raml

ENV RAML_PATH=api.raml

COPY bin/init.sh /init.sh
RUN chmod +x /init.sh
EXPOSE 80
CMD /init.sh
