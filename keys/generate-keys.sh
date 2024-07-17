IP="192.168.0.105"
SUBJECT_CA="/C=JP/ST=Tokyo/L=Tokyo/O=TT/OU=CA/CN=$IP"
SUBJECT_SERVER="/C=SE/ST=Tokyo/L=Tokyo/O=TT/OU=Server/CN=$IP"

echo "$SUBJECT_CA"
openssl req -x509 -nodes -sha256 -newkey rsa:2048 -subj "$SUBJECT_CA"  -days 365 -keyout ca.key -out ca.crt


echo "$SUBJECT_SERVER"
openssl req -nodes -sha256 -new -subj "$SUBJECT_SERVER" -keyout server.key -out server.csr
openssl x509 -req -sha256 -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 365


generate_CA
generate_server