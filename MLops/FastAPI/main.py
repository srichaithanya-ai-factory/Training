# from fastapi import FastAPI

# #object is created
# app=FastAPI()

# #using decorator route is created
# @app.get("/")
# def hello():
#     return {'message':"hello World"}

# @app.get("/about")
# def about():
#     return {"message": "campusx is a education channel"}


from fastapi import FastAPI
import json
#object is created
app=FastAPI()

def load_data():
    with open("patients.json", 'r') as f:
        data=json.load(f)
        return data

#using decorator route is created
@app.get("/")
def hello():
    return {'message':"Patient Management System API"}

@app.get("/about")
def about():
    return {"message": "Fully Functional API to manage ur patient record "}

@app.get("/view")
def view():
    data=load_data()
    return data






