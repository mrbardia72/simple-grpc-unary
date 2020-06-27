# simple-grpc-unary
Unary RPCs where the client sends a single request to the server and gets a single response back, just like a normal function call.

`rpc SayHello(HelloRequest) returns (HelloResponse);`

First consider the simplest type of RPC where the client sends a single request and gets back a single response.

Once the client calls a stub method, the server is notified that the RPC has been invoked with the client’s metadata for this call, the method name, and the specified deadline if applicable.
The server can then either send back its own initial metadata (which must be sent before any response) straight away, or wait for the client’s request message. Which happens first, is application-specific.
Once the server has the client’s request message, it does whatever work is necessary to create and populate a response. The response is then returned (if successful) to the client together with status details (status code and optional status message) and optional trailing metadata.
If the response status is OK, then the client gets the response, which completes the call on the client side.