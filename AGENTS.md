# Agent instructions

All commits must be cryptographically signed and verified. Use `git commit -S` for local commits and verify each signature with `git verify-commit` before pushing. Confirm GitHub marks published commits Verified. Apply the same rule to automated commits.

Enable the repository's pre-push hook in each clone with `git config --local core.hooksPath .githooks`.

## CLI releases

Use the stable CLI version from `magicmtn/cli/Cargo.toml` and the promoted release manifest. Point the formula at `magicmtn-cli-993499103295` and verify the artifact checksum before publishing. Preserve `version_scheme 1` on future releases so Homebrew upgrades correctly from the previous date-based versions to Semantic Versioning.
