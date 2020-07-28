.PHONY: proto
proto: ## proto the proto file.
	protoc -I calculatorpb/ calculatorpb/credit.proto --go_out=plugins=grpc:calculatorpb/
 
.PHONY: server
server: ## Build and run server.
	go build -o bin/server server/main.go
	bin/server
 
.PHONY: client
client: ## Build and run client.
	go build -o bin/client client/main.go
	bin/client

.PHONY: commit
pull: ## pull commit git
	git add .
	git commit -m "grpc-unary-makefile"
	git push