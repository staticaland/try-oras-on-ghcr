REPO=ghcr.io/staticaland/try-oras-on-ghcr/single:lol
REPO_MULTIPLE=ghcr.io/staticaland/try-oras-on-ghcr/multiple:lol

.PHONY: push pull

push:
	oras push "$(REPO)" \
	--artifact-type application/vnd.acme.rocket.config \
  	artifact.txt:text/plain \

push-multiple:
	oras push "$(REPO_MULTIPLE)" \
	--artifact-type: application/vnd.kenmuse.mytool.config.v1 \
	artifact.txt README.md

pull:
	rm -f artifact.txt
	oras pull "$(REPO)"
	cat artifact.txt README.md

pull-multiple:
	rm -f artifact.txt
	oras pull "$(REPO_MULTIPLE)"
	cat artifact.txt