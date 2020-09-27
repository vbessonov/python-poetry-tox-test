from unittest import TestCase

from poetry_tox_test.api import API


class APITest(TestCase):
    def test(self):
        api = API()
        result = api.test()

        self.assertEqual('2.7', result)
