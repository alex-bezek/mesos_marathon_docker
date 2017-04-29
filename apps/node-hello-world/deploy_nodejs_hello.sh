docker build -t localhost:5000/node-hello-marathon .
docker push localhost:5000/node-hello-marathon
curl -X POST -H "Content-Type: application/json" http://dockerhost:8080/v2/apps -d@node_hello_marathon.json
