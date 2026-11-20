# Agent instructions

All commits must be cryptographically signed and verified. Use `git commit -S` for local commits and verify each signature with `git verify-commit` before pushing. Confirm GitHub marks published commits Verified. Apply the same rule to automated commits.

Enable the repository's pre-push hook in each clone with `git config --local core.hooksPath .githooks`.
