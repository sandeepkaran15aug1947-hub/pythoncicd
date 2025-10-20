#!/bin/bash

echo "🔧 Starting FastAPI setup..."

# Optional: create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Start FastAPI app
echo "🚀 Launching FastAPI with Uvicorn..."
exec uvicorn app.main:app --host 0.0.0.0 --port 8000
