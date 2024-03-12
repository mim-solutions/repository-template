#!/usr/bin/env bash
set -ex
{% if cookiecutter.use_poetry -%}
pip install poetry
poetry install --only lint
poetry run flake8 .
poetry run nbqa flake8 notebooks --nbqa-shell
{%- else -%}
pip install flake8 nbqa
flake8 .
nbqa flake8 notebooks --nbqa-shell
{%- endif %}
