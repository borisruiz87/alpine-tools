# Base Alpine
FROM alpine:latest

# Instalando postfix
RUN apk add --update bash busybox-extras bind-tools openssh && rm -rf /var/cache/apk/*
# configurando
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
# Generando las keys
RUN ssh-keygen -A
# exportando el puerto 22
EXPOSE 22

# ejecutando
CMD ["sh","-c", "/usr/sbin/sshd -D -e"]
