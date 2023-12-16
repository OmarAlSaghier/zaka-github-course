# This is a testing script for the add function
# to be verified with GitHub Actions

from app import add

def test_add():
    assert add(2, 3) == 5
