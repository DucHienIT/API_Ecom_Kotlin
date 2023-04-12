# sử dụng image python:3.8.5-alpine
FROM python:3.8.5-alpine

# set the working directory to /app
WORKDIR /app

# copy the current directory contents into the container at /app
COPY . /app

# install the required packages

RUN set -o errexit

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# chạy lệnh runserver khi container được khởi chạy
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
