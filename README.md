# Pylint Python Code linter Check

A GitHub action that runs [Pylint](https://github.com/PyCQA/pylint/) to test if your python code is correctly formatted.

- SUCCESS: exit-code=zero → no changes were necessary.
- FAIL: exit-code=non-zero → not correctly formatted or program error

## Usage

To use this action in your repository, create a file like `.github/workflows/pylint_check.yml` with the following content:

```yml
name: Pylint linter Check
on: [push]
jobs:
  formatting-check:
    name: Linter Check
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Pylint test if your python code is correctly formatted
      uses: CrunchMind/pylint-action@master
      with:
        args: --verbose
```

You can pass any other [Pylint parameter](http://pylint.pycqa.org/en/latest/index.html) using the `args` setting, e.g. for setting a different code style (default is PEP8), but you can also remove the `with` section entirely if you wish.
