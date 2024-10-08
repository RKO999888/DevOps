# Makefile for the Currency Converter project

# Variables
PYTHON = python

# Targets
.PHONY: all run test clean

# Default target
all: run

# Run the main program
run:
	@echo "Running code.py"
	$(PYTHON) code.py

# Run the tests
test:
	@echo "Running unit tests"
	$(PYTHON) -m unittest discover -s . -p "unit_test.py"

# Clean up (if needed for future use, e.g., removing temporary files)
clean:
	@echo "No files to clean for now"
