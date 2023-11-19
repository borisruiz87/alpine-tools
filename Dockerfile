# Base Alpine
FROM alpine:latest

# Instalando postfix
RUN apk add --update bash busybox-extras bind-tools openssh && rm -rf /var/cache/apk/*
# configurando
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

EXPOSE 22

# ejecutando
CMD ["sh","-c", "/usr/sbin/sshd -D -e"]
