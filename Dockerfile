FROM python:3.9
ADD manage.py .
CMD [ "python","./manage.py","runserver" ]