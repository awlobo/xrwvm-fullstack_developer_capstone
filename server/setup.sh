cd /home/project/xrwvm-fullstack_developer_capstone/server
pip install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate

python3 -m pip install -U -r requirements.txt

python3 manage.py makemigrations
# python3 manage.py migrate --run-syncdb
python3 manage.py migrate
# python3 manage.py runserver

 git config --local user.email "andrea.lobo@pix4d.com"
 git config --local user.name "Andrea Lobo"
