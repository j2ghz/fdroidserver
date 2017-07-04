
For people already setup with Docker, this is a very easy way to run
the _fdroidserver_ tools for managing F-Droid repos and building apps.
It does not include a full Android SDK, so if you want to use the full
Android SDK with this image, you'll need to mount your own local copy.

It can be run using:

```console
$ docker run --rm -v $(pwd):/repo registry.gitlab.com/fdroid/docker-executable-fdroidserver:latest
```
