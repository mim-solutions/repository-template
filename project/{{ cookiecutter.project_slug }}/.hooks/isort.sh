#!/usr/bin/env sh
set -ex
# isort "fails" if there are any changes made and thus the whole hook fails.
# This is a deliberate decision made by pre-commit creators, see below:
# https://github.com/pre-commit/pre-commit/issues/2240#issuecomment-1034028917
{% if cookiecutter.use_poetry -%}
poetry run isort .
poetry run nbqa isort notebooks
{%- else -%}
isort .
nbqa isort notebooks
{%- endif %}
