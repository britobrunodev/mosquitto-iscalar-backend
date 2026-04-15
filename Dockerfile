FROM eclipse-mosquitto:2.0.21

USER root

RUN apk add --no-cache mosquitto mosquitto-clients

COPY configurations/mosquitto.conf /etc/mosquitto/mosquitto.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 1883

ENTRYPOINT ["/entrypoint.sh"]