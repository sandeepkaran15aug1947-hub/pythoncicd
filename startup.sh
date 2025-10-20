#!/bin/bash
set -e

echo "🔧 Starting FastAPI setup..."

python3 -m pip install --upgrade pip

if [ -f requirements.txt ]; then
    pip install -r requirements.txt
else
    echo "⚠️ No requirements.txt found, skipping dependency install."
fi

echo "🚀 Launching FastAPI with Uvicorn..."
exec python -m uvicorn app.main:app --host 0.0.0.0 --port 8000
