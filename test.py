lfrom app import app
from json import loads
import unittest

class BasicServerRunning(unittest.TestCase):
    def test_health_check(self):
        tester = app.test_client(self)
        response = tester.get('/', content_type='application/json')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(loads(response.data), {'working': True})

if __name__ == '__main__':
    unittest.main()
