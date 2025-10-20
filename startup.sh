#!/bin/bash
set -e  # exit if any command fails

echo "🔧 Starting FastAPI setup..."

# Optional: create virtual environment
python3 -m venv venv
source venv/bin/activate

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r requirements.txt

echo "🚀 Launching FastAPI with Uvicorn..."
exec uvicorn app.main:app --host 0.0.0.0 --port 8000
