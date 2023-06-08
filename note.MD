# django is hard

installation:
```
sudo apt update
sudo apt install python3-django
django-admin --version
sudo apt install python3-pip python3-venv
mkdir ~/newproject
cd ~/newproject
python3 -m venv my_env
source my_env/bin/activate
pip install django
django-admin startproject djangoproject .
python manage.py migrate
python manage.py runserver
```

# flask is easy
```
pip3 install Flask
mkdir myproject 
cd myproject 
python3 -m venv venv
export FLASK_APP=hello.py

virtual env
source env/bin/activate
pip3 install flask-sqlalchemy
python3 app.py
```



