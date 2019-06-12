FROM v2ray/official

USER root
RUN apk --no-cache add iptables

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh /entrypoint.sh"]
