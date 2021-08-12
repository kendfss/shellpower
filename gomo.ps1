$name = $args[0]
mcd $name
go mod init $name
p > main.go
go mod tidy
go run main.go
