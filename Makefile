DOCKER_METADATA_OUTPUT_TAGS ?= latest,lol
REPO_SINGLE ?= ghcr.io/staticaland/try-oras-on-ghcr/single
REPO_MULTIPLE ?= ghcr.io/staticaland/try-oras-on-ghcr/multiple

.PHONY: push pull

push:
	oras push "$(REPO_SINGLE):$(DOCKER_METADATA_OUTPUT_TAGS)" \
	--artifact-type application/vnd.acme.rocket.config \
  	artifact.txt:text/plain

push-multiple:
	oras push "$(REPO_MULTIPLE)" \
	--artifact-type application/vnd.acme.rocket.config \
	artifact.txt README.md

pull:
	rm -f artifact.txt
	oras pull "$(REPO_SINGLE)"
	cat artifact.txt

pull-multiple:
	rm -f artifact.txt README.md
	oras pull "$(REPO_MULTIPLE)"
	cat artifact.txt README.md