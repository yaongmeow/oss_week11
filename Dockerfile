FROM python:3.9

ENV STUDENT_ID=2020314867

RUN mkdir workspace
RUN apt-get update
RUN pip3 install --no-cache-dir fastapi==0.110.3
RUN pip3 install --no-cache-dir 'uvicorn[standard]'

COPY ./main.py /workspace/main.py

WORKDIR /workspace

CMD ["--host=0.0.0.0", "--port=80", "main:app"]

EXPOSE 80/tcp

ENTRYPOINT ["uvicorn"]
