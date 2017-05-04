# Docker container with Scala build environment
Dockerfile relies on a build parameter `SBT_VERSION` so to build the image:

`docker build --build_args SBT_VERSION=0.13.15 .`

Note: the project contains an Akka project that is used to download all `sbt` and common scala dependencies. After dependencies are downloaded, the project is deleted from the docker image.
