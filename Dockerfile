# === VERSION VULNÉRABLE (Pour faire échouer la CI) ===
# L'image Debian Buster contient plusieurs CVEs de niveau Critical/High au niveau du système d'exploitation

# FROM python:3.9-slim-buster
# FROM python:3.12-slim-bookworm
FROM python:3.12-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
