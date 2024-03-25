#!/usr/bin/env bash
set -ex
{% if cookiecutter.use_poetry -%}
pip install poetry
poetry install
poetry run pytest
{%- else -%}
pip install -e .
pip install pytest
pytest
{%- endif %}
