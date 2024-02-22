REPO=ghcr.io/staticaland/try-oras-on-ghcr/single:lol
REPO_MULTIPLE=ghcr.io/staticaland/try-oras-on-ghcr/multiple:lol

.PHONY: push pull

push:
	oras push "$(REPO)" \
	--artifact-type application/vnd.acme.rocket.config \
  	artifact.txt:text/plain

push-multiple:
	oras push "$(REPO_MULTIPLE)" \
	--artifact-type application/vnd.acme.rocket.config \
	artifact.txt README.md

pull:
	rm -f artifact.txt
	oras pull "$(REPO)"
	cat artifact.txt

pull-multiple:
	rm -f artifact.txt README.md
	oras pull "$(REPO_MULTIPLE)"
	cat artifact.txt README.md