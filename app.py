from fastapi import FastAPI

app = FastAPI()


app.get("/")
def index():
    return "TEST CIDC"

app.get("/test")
def index():
    return "TEST ENDOINT`"