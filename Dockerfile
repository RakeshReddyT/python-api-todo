FROM python:3.8-slim
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN pip install --upgrade pip
RUN pip install --upgrade pip wheel
RUN pip install -r requirements.txt 
EXPOSE 8000
#CMD ["sh", "entrypoint-script.sh"]
CMD python3 manage.py runserver 0.0.0.0:8000 --noreload
