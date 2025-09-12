FROM python
WORKDIR /devdocker
COPY . /devdocker
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]