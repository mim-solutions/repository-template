#!/usr/bin/env bash
set -ex
{% if cookiecutter.use_poetry -%}
pip install poetry
poetry install --only lint
poetry run isort . --check-only
poetry run nbqa isort notebooks --check-only
{%- else -%}
pip install isort nbqa
isort . --check-only
nbqa isort notebooks --check-only
{%- endif %}
