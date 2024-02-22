# try-oras-on-ghcr

This project shows how to use ORAS (OCI Registry as Storage) to upload artifacts, such as a single text file or a collection of files, to the GitHub Container Registry.

Pull:

```sh
oras pull 'ghcr.io/staticaland/try-oras-on-ghcr/single:lol'
oras pull 'ghcr.io/staticaland/try-oras-on-ghcr/multiple:lol'
```

Read:

- [ORAS docs - Pushing and Pulling](https://oras.land/docs/how_to_guides/pushing_and_pulling)
- [Universal Packages on GitHub With ORAS](https://www.kenmuse.com/blog/universal-packages-on-github-with-oras/)

Watch:

- [Distributing Supply Chain Artifacts with OCI & ORAS Artifacts](https://www.youtube.com/watch?v=BpKF_0M37-0)
- [Introduction to project ORAS](https://www.youtube.com/watch?v=dpXR3PJ_FHE)

Look at code from people who are doing similar stuff:

- [Running `oras push` in workflows](https://github.com/search?q=%22oras+push%22+path%3A.github%2Fworkflows&type=code)
- [Using `docker/metadata-action` with ORAS in workflows](https://github.com/search?q=%22oras+push%22+%22docker%2Fmetadata-action%22&type=code)