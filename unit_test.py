import unittest
from currency_converter import currency_converter

class TestCurrencyConverter(unittest.TestCase):

    def test_usd_to_eur(self):
        self.assertAlmostEqual(currency_converter(100, 'USD', 'EUR'), 85.0)

    def test_eur_to_usd(self):
        self.assertAlmostEqual(currency_converter(100, 'EUR', 'USD'), 118.0)

    def test_gbp_to_inr(self):
        self.assertAlmostEqual(currency_converter(100, 'GBP', 'NPR'), 9840.0)

    def test_inr_to_usd(self):
        self.assertAlmostEqual(currency_converter(1000, 'NPR', 'USD'), 14.0)

    def test_same_currency(self):
        self.assertEqual(currency_converter(100, 'USD', 'USD'), 100)

    def test_invalid_currency(self):
        self.assertIsNone(currency_converter(100, 'USD', 'ABC'))

if __name__ == '__main__':
    unittest.main()
