import unittest
import requests

class WeatherServiceTests(unittest.TestCase):
    BASE_URL = "http://localhost:5000"  # Adjust if running on a different port

    def test_health_check(self):
        response = requests.get(f"{self.BASE_URL}/")
        self.assertEqual(response.status_code, 200)
        self.assertIn("The service is running", response.text)

    def test_valid_city(self):
        city = "London"
        response = requests.get(f"{self.BASE_URL}/{city}")
        self.assertEqual(response.status_code, 200)
        data = response.json()
        self.assertIn("location", data)
        self.assertEqual(data["location"]["name"].lower(), city.lower())

    def test_invalid_city(self):
        city = "InvalidCityName123"
        response = requests.get(f"{self.BASE_URL}/{city}")
        self.assertTrue(response.status_code in [400, 500])  # API may return 400 or 500
        data = response.json()
        self.assertIn("message", data)

if __name__ == '__main__':
    unittest.main()
