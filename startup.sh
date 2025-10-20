#!/bin/bash
#!/bin/bash
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
exec uvicorn app.main:app --host 0.0.0.0 --port 8000
