#!/bin/sh

openssl req -new -x509 -days 3650 -nodes \
    -out /etc/rdesktop/certificate.pem \
    -keyout /etc/rdesktop/privatekey.key \
    -subj "/C=NL/ST=none/L=none/O=SpotSnel/OU=RDesktop/CN=*"

chown :users /etc/rdesktop/certificate.pem /etc/rdesktop/privatekey.key
chmod g+r /etc/rdesktop/certificate.pem /etc/rdesktop/privatekey.key

