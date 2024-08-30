# atlantis-terragrunt
A simple Docker image to let Atlantis run Terragrunt

Image can be pulled from `ghcr.io/grrywlsn/atlantis-terragrunt:v1.0.0`, where `v1.0.0` will be one of the [tagged releases](https://github.com/grrywlsn/atlantis-terragrunt/releases) below.

## Versions available

Each image is built from the mainline Atlantis image as a base. Useful binaries are added, you can see the versions in this table:


| Image tag | Atlantis version | Terragrunt version | Atlantis config version |
|-----------|------------------|--------------------|-------------------------|
| 1.3.0     | 0.29.0           | 0.67.1             | 1.18.0                  |
| 1.2.0     | 0.28.5           | 0.66.8             | 1.18.0                  |
| 1.1.0     | 0.28.3           | 0.59.5             | 1.18.0                  |
| 1.0.0     | 0.26.0           | 0.52.5             | 1.17.0                  |

- Atlantis: https://github.com/runatlantis/atlantis/releases
- Terragrunt: https://github.com/gruntwork-io/terragrunt/releases
- Atlantis config: https://github.com/transcend-io/terragrunt-atlantis-config/releases
