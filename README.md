# Solid Gold Easy Action

WARNING: This repo is purely exploratory testing

Test of using Dockerfile and Apko to build Go image with pinned version of Go, then using that
version to build an application. The build pins the `go-1.20` package to `1.20.4`. In reality, a
user is more likely to explicitly use `go-1.19`, where the minor version is in the package name. I
did things this way to show how pinning to an explicit apk package works in apko and Dockerfiles.

The included GitHub action will build `local_go` using apko and the `apko.yaml` from the repo, then
use that to build the Go application.

The script `build.sh` will do the same thing for local development.

`Dockerfile` builds the server application using a `local_go` image.

`Dockerfile.local_go` is an equiavelent to the apko build, including the pinned version of Go.
There's really not much lost here.

`Dockerfile.all` combines `Dockerfile.local_go` and the Dockerfile. This actually seems the easiest
way of doing things.




