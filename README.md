# hooks

A small collection of Git hooks and pre-commit configuration.

## Contents

- `commit-msg/commit-pattern.sh` — commit-msg hook that requires a JIRA issue ID in the commit message (e.g. `JIRA-123 - initial commit`).
- `.pre-commit-config.yaml` — [pre-commit](https://pre-commit.com) hooks: whitespace/newline fixers, YAML/JSON validation, `yamllint`, and `terraform_fmt`.
- `.yamllint` — yamllint configuration.
- `samples/` — sample YAML, JSON, and Terraform files used to validate the hooks (`samples/negative/` holds intentionally broken files for negative testing).

## Usage

### commit-msg hook

```sh
cp commit-msg/commit-pattern.sh .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg
```

### pre-commit

```sh
pip install pre-commit
pre-commit install
pre-commit run --all-files
```

CI runs `pre-commit` against the `samples/` folder on every push and pull request via `.github/workflows/pre-commit.yaml`.
