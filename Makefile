BINARY_NAME=Go-Markdown-Notes.app
APP_NAME=Go-Markdown-Notes
VERSION=1.0.0


build:
	rm -rf ${BINARY_NAME}
	rm -f fyne-md
	fyne package -appVersion ${VERSION} -name ${APP_NAME} -release

run:
	go run .

clean:
	@echo "Cleaning..."
	@go clean
	@rm -rf ${BINARY_NAME}
	@echo "Cleaning Finished!"

test:
	go test -v ./...