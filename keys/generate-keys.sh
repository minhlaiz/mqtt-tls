openssl req -x509 -newkey rsa:4096 -sha256 -utf8 -days 365 -nodes \
    -config tiny_openssl.conf \
    -keyout ca.key \
    -out ca.crt \
