Docker with mdbook
==================================================

[Source code on GitHub][github] | [Image on DockerHub][dockerhub]

---

This image is based on ubuntu and contains [mdbook] as an entrypoint.

It was designed to allow building an mdbook site anywhere, without having the
mdbook executable.


Usage
--------------------------------------------------

Run this in a directory where you have your mdbook source (where you would
normally run `mdbook build`)

```
$ docker run --rm -it  -v $PWD:/app dannyben/mdbook build

# Or, any other mdbook command
$ docker run --rm -it  -v $PWD:/app dannyben/mdbook --help
```


[mdbook]: https://github.com/rust-lang/mdBook
[github]: https://github.com/DannyBen/docker-mdbook
[dockerhub]: https://hub.docker.com/r/dannyben/mdbook
