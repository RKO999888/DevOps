# Makefile for Python application

# Variables
APP_NAME = currency_converter
VENV_DIR = venv
SRC_DIR = .
TEST_DIR = .
PACKAGE_DIR = dist

# Commands
PYTHON = python3
PIP = pip
VENV = $(VENV_DIR)/bin/activate

# Default target
all: build test package

# Create virtual environment
venv:
	@echo "Creating virtual environment..."
	$(PYTHON) -m venv $(VENV_DIR)
	@echo "Virtual environment created."

# Install dependencies
install: venv
	@echo "Installing dependencies..."
	. $(VENV) && $(PIP) install -r requirements.txt
	@echo "Dependencies installed."

# Build the application (example: clean and prepare)
build: clean install
	@echo "Building the application..."
	@echo "Build complete."

# Run tests
test: install
	@echo "Running unit tests..."
	. $(VENV) && $(PYTHON) -m unittest discover -s $(TEST_DIR) -p "*_test.py"
	@echo "Unit tests complete."

# Package the application
package: install
	@echo "Packaging the application..."
	mkdir -p $(PACKAGE_DIR)
	. $(VENV) && $(PYTHON) setup.py sdist bdist_wheel --dist-dir $(PACKAGE_DIR)
	@echo "Packaging complete."

# Clean up the project directory
clean:
	@echo "Cleaning up..."
	rm -rf $(VENV_DIR) $(PACKAGE_DIR)
	find . -type f -name '*.pyc' -delete
	find . -type d -name '__pycache__' -delete
	@echo "Clean complete."

# Phony targets
.PHONY: all venv install build test package clean
