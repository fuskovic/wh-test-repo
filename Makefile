.PHONY: quay-build
quay-build:
	@echo "Building the project..."
	@docker build -t quay.io/faris_huskovic/webhook-poc:1.31.0 .

.PHONY: quay-push
quay-push: quay-build
	@echo "Pushing the image to Quay..."
	@docker push quay.io/faris_huskovic/webhook-poc:1.31.0