import pytest

import lib


def test_tests():
    assert True
    with pytest.raises(AssertionError):
        assert False


def test_lib_availability():
    assert lib is not None
