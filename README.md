[![](https://images.microbadger.com/badges/image/j2ghz/fdroidserver.svg)](https://microbadger.com/images/j2ghz/fdroidserver "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/j2ghz/fdroidserver.svg)](https://microbadger.com/images/j2ghz/fdroidserver "Get your own version badge on microbadger.com")

For people already setup with Docker, this is a very easy way to run
the _fdroidserver_ tools for managing F-Droid repos and building apps.
It does not include a full Android SDK, so if you want to use the full
Android SDK with this image, you'll need to mount your own local copy.

It can be run using:

```console
$ docker run --rm -v $(pwd):/repo registry.gitlab.com/fdroid/docker-executable-fdroidserver:latest
```
