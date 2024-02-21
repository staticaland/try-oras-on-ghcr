REPO=ghcr.io/staticaland/try-oras-on-ghcr/hehe:lol

.PHONY: push pull

push:
	oras push "$(REPO)" \
	--artifact-type application/vnd.acme.rocket.config \
	./artifact.txt

pull:
	rm -f artifact.txt
	oras pull "$(REPO)"
	cat artifact.txt