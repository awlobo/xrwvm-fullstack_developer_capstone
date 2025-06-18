# xrwvm-fullstack_developer_capstone

https://andrealobo-8000.theiadockernext-0-labs-prod-theiak8s-4-tor01.proxy.cognitiveclass.ai

## Server

```bash
cd server

pip install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate

python3 -m pip install -U -r requirements.txt

python3 manage.py makemigrations
python3 manage.py migrate --run-syncdb
python3 manage.py runserver
```

## Database

```bash
cd server/database
docker build . -t nodeapp
docker-compose up
```

## Frontend

```bash
cd server/frontend
npm install
npm run build
```

## Sentiment

```bash
cd server/djangoapp/microservices
docker build . -t senti_analyzer
docker run -d -p 5050:5000 --name senti senti_analyzer
```

## Deploy with kubernetes

```bash
kubectl apply -f deployment.yaml
kubectl port-forward deployment.apps/dealership 8000:8000
```

## Create superuser

```bash
python3 manage.py createsuperuser
```
