# Docker container with Scala build environment
To build a new image, use the `build` script:

`build <tag> <sbt version>`

ex:

`build scala-buildenv 0.13.15`

Note: the project contains an Akka project that is used to download all `sbt` and common scala dependencies. After dependencies are downloaded, the project is deleted from the docker image.
