build:
	mkdir -p functions
	go build -o functions/notify .src/action/notify/main.go
