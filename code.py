def currency_converter(amount, from_currency, to_currency):
    # Predefined exchange rates (rates as of a specific date)
    exchange_rates = {
        'USD': {'EUR': 0.85, 'GBP': 0.75, 'NPR': 73.50},
        'EUR': {'USD': 1.18, 'GBP': 0.88, 'NPR': 86.67},
        'GBP': {'USD': 1.33, 'EUR': 1.14, 'NPR': 98.40},
        'NPR': {'USD': 0.014, 'EUR': 0.012, 'GBP': 0.010}
    }

    if from_currency == to_currency:
        return amount

    try:
        rate = exchange_rates[from_currency][to_currency]
        converted_amount = amount * rate
        return converted_amount
    except KeyError:
        print("Exchange rate not available for the provided currency codes.")
        return None

def main():
    print("Welcome to the Currency Converter!")
    amount = float(input("Enter the amount you want to convert: "))
    from_currency = input("Enter the currency code you are converting from (e.g., USD, EUR): ").upper()
    to_currency = input("Enter the currency code you are converting to (e.g., USD, EUR): ").upper()

    converted_amount = currency_converter(amount, from_currency, to_currency)
    if converted_amount is not None:
        print(f"{amount} {from_currency} is equal to {converted_amount:.2f} {to_currency}.")

if __name__ == "__main__":
    main()
