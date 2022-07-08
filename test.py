
from api import app
import unittest


class FlaskTest(unittest.TestCase):

    def test_index(self):
        tester = app.test_client(self)
        response = tester.get("/")
        statusCode = response.status_code
        self.assertEqual(statusCode,200)

if __name__ == "__main__":
    unittest.main()