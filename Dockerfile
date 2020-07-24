FROM python:3.8.5-slim-buster

WORKDIR /flaskapp
COPY ./ ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=run.py
#CMD ["flask", "run", "--host=0.0.0.0"]

CMD ["gunicorn", "-w", "3", "-b", "0.0.0.0:5000", "run:app"]
