from fastapi import FastAPI
import requests

obj = FastAPI()

@obj.get("/study")
def get_study():
    return {"msg": "Study route working"}

@obj.get("/external")
def get_external():
    response = requests.get("https://api.github.com")
    return {"status_code": response.status_code}
