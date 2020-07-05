VERSION := 2.3.6
TAG := allgreed/nix:$(VERSION)

container: 
	docker build -t $(TAG) --build-arg VERSION=$(VERSION) .

upload:
	docker push $(TAG)
