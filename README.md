# Repository Template

This repository contains a cookiecutter template for creating an open-source project.

To use it, first install the cookiecutter command:

```bash
pip install cookiecutter
```

Example usage (will open dialogue and create a new directory in the current directory, based on passed project name):

```bash
cookiecutter git@github.com:mim-solutions/repository-template.git --directory your_project
```

You can first clone the new repository for a new project and pass the extra `-f` argument
to overwrite contents of the cloned repository by `cookiecutter`.

More details on cookiecutter at https://cookiecutter.readthedocs.io/.

## Development

To test a template during development, with this repository cloned locally, pass a path as in the example:

```bash
cookiecutter /path/to/this/repo/project
```
