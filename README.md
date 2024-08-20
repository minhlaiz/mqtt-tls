
Steps to create basic tls config
1. run generate-keys bash script

```bash
    sh ./keys/generate-keys.sh
```
2. move ca.crt server.crt server.key into ./config/certs 

3. run docker-compose


now you have basic TLS config. 

run these two commands sub and pub utilizing the ca certificate


```bash
mosquitto_sub -v -h 127.0.0.1 -p 8883 -t '#' --cafile ca.crt
mosquitto_pub -h 127.0.0.1 -t test/topic -m "Hello World" --cafile ca.crt

```