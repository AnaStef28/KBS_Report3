FROM pytorch/pytorch:latest

RUN pip install --no-cache-dir \
    kagglehub \
    scikit-learn \
    matplotlib \
    tqdm \
    pandas

WORKDIR /app

COPY . /app

CMD ["python", "-c", "print('Benchmark Environment Ready')"]