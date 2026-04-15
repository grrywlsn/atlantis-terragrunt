# atlantis-terragrunt
A simple Docker image to let Atlantis run Terragrunt

Image can be pulled from `ghcr.io/grrywlsn/atlantis-terragrunt:v1.0.0`, where `v1.0.0` matches a [GitHub release tag](https://github.com/grrywlsn/atlantis-terragrunt/releases).

## Versions in each image

Each image is built from the mainline Atlantis image as a base, with Terragrunt and `terragrunt-atlantis-config` added. For every [GitHub release](https://github.com/grrywlsn/atlantis-terragrunt/releases), the release notes begin with a **Components in this image** section listing the exact Atlantis, Terragrunt, and terragrunt-atlantis-config versions baked into that tag (parsed from the `Dockerfile` on the release commit).

- Atlantis: https://github.com/runatlantis/atlantis/releases
- Terragrunt: https://github.com/gruntwork-io/terragrunt/releases
- Atlantis config: https://github.com/transcend-io/terragrunt-atlantis-config/releases
