from fastapi import FastAPI

obj=FastAPI()  # creating an object of FastApi

mylist=[
    
     { "id":101,"Name":"sandeep"},
      { "id":101,"Name":"sandeep"}
    ]

@obj.get("/study")
def mystudy():
    return mylist

@obj.get("/items")
def read_item(name: str, price: int):
    return {"name": name, "price": price}


app = FastAPI()

@obj.get("/items/{item_id}")
def read_items(item_id: int):
    return {"item_id": item_id}
