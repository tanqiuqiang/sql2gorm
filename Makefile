build:
	go build -ldflags="-s -w" sqlgorm.go
	$(if $(shell command -v upx), upx sqlgorm)
mac:
	GOOS=darwin go build -ldflags="-s -w" -o sqlgorm-darwin sqlgorm.go
	$(if $(shell command -v upx), upx sqlgorm-darwin)
win:
	GOOS=windows go build -ldflags="-s -w" -o sqlgorm.exe sqlgorm.go
	$(if $(shell command -v upx), upx sqlgorm.exe)
linux:
	GOOS=linux go build -ldflags="-s -w" -o sqlgorm-linux sqlgorm.go
	$(if $(shell command -v upx), upx sqlgorm-linux)
