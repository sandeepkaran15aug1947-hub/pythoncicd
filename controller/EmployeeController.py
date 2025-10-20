from fastapi import FastAPI

# FastAPI instance
obj = FastAPI()

# Example route
@obj.get("/study")
def get_study():
    return {"msg": "Study route working"}
