# Makefile for the Currency Converter project

# Variables
PYTHON = python

# Targets
.PHONY: all run test clean

# Default target
all: run

# Run the main program
run:
	$(PYTHON) code.py

# Run the tests
test:
	$(PYTHON) -m unit_test.py

# Clean up (if needed for future use, e.g., removing temporary files)
clean:
	# Example: rm -rf __pycache__
	@echo "No files to clean for now"
