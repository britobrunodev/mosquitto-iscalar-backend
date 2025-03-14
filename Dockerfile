FROM eclipse-mosquitto:latest
COPY mosquitto.conf /etc/mosquitto/mosquitto.conf
EXPOSE 1883
CMD ["mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]