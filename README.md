
Steps to create basic tls config
1. run generate-keys bash script

```bash
    sh generate-keys.sh
```
2. move ca.crt server.crt server.key into ./config/certs

3. run docker-compose


now you have basic TLS config. 

run these two commands sub and pub utilizing the ca certificate


```bash
mosquitto_sub -v -h 192.168.0.105 -p 8883 -t '#' --cafile ca.crt
mosquitto_pub -h 192.168.0.105 -t test/topic -m "Hello World" --cafile ca.crt

```