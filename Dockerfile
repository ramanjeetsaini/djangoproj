FROM python:3.5-stretch


# Copy source files into the image
COPY django_reddit ./django_reddit
WORKDIR /django_reddit
# Install modules
RUN pip install --upgrade pip
RUN pip install -r requirements.txt 


EXPOSE 8000

CMD python manage.py migrate && python manage.py runserver 0.0.0.0:8000