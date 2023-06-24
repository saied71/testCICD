FROM python:3.7 as production
RUN mkdir /app
WORKDIR /app
COPY req.txt /var
RUN pip3 install -r /var/req.txt
RUN python3 /var/nltk_dl.py
CMD ["uvicorn", "app:app", "--host=0.0.0.0", "--port=8080"]

FROM production as dev
CMD ["uvicorn", "app:app", "--host=0.0.0.0", "--reload", "--port=8080"]