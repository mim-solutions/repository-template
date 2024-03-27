import pytest

import {{ cookiecutter.package_name }}


def test_tests():
    assert True
    with pytest.raises(AssertionError):
        assert False


def test_package_availability():
    assert {{ cookiecutter.package_name }} is not None
