# Usa una imagen base de Python.
FROM python:3.9-slim

WORKDIR /app

COPY . /app/

RUN pip install --no-cache-dir ansible

RUN chmod +x /app/exec_ansible.sh

CMD ["ansible-playbook", "/app/exec_ansible.yml"]

