#!/usr/bin/env bash
# Prints a Markdown fragment for GitHub release notes: pinned upstream versions
# from the Dockerfile at the current checkout (used with generate_release_notes).
set -euo pipefail

dockerfile="${1:-Dockerfile}"
if [[ ! -f "${dockerfile}" ]]; then
  echo "error: ${dockerfile} not found" >&2
  exit 1
fi

atlantis_line=$(grep -m1 '^FROM ghcr.io/runatlantis/atlantis:' "${dockerfile}")
atlantis_version="${atlantis_line##*:}"
terragrunt_version=$(grep -m1 '^ARG TERRAGRUNT_VERSION=' "${dockerfile}" | cut -d= -f2-)
config_version=$(grep -m1 '^ARG ATLANTIS_CONFIG_VERSION=' "${dockerfile}" | cut -d= -f2-)

cat <<EOF
## Components in this image

| Component | Version |
| --- | --- |
| [Atlantis](https://github.com/runatlantis/atlantis/releases) | \`${atlantis_version}\` |
| [Terragrunt](https://github.com/gruntwork-io/terragrunt/releases) | \`${terragrunt_version}\` |
| [terragrunt-atlantis-config](https://github.com/transcend-io/terragrunt-atlantis-config/releases) | \`${config_version}\` |

EOF
