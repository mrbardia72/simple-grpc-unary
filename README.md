# simple-grpc-unary
![alt text](https://miro.medium.com/max/1400/1*pFaeNO48gYlRMQii977cQg.jpeg)
Unary RPCs where the client sends a single request to the server and gets a single response back, just like a normal function call.
```go
rpc SayHello(HelloRequest) returns (HelloResponse);
```

First consider the simplest type of RPC where the client sends a single request and gets back a single response.

1. Once the client calls a stub method, the server is notified that the RPC has been invoked with the client’s metadata for this call, the method name, and the specified deadline if applicable.

2. The server can then either send back its own initial metadata (which must be sent before any response) straight away, or wait for the client’s request message. Which happens first, is application-specific.

3. Once the server has the client’s request message, it does whatever work is necessary to create and populate a response. The response is then returned (if successful) to the client together with status details (status code and optional status message) and optional trailing metadata.

4. If the response status is OK, then the client gets the response, which completes the call on the client side.

# Run Project
1. cd calculator_server
2. go run main.go
3. cd calculator_client
4. go run main.go