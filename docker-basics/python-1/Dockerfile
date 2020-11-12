FROM python:alpine3.12
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 81

# CMD python main.py
ENTRYPOINT [ "python", "launch.py" ]

