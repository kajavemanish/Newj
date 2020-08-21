FROM python:3.7.2-slim
COPY ./app
WORKDIR /app
RUN pip install --upgrade pip && pip install --no-cache-dir-r requirements.txt
EXPOSE 80
ENTRYPOINT ["python"]
CMD ["app.py"]
