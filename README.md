# django_template

## projectをデプロイ

images作成しての、デプロイ。

```
$ cd django_template
$ docker-compose run web django-admin.py startproject django_template .
```

## データベース作成

データベース名*report_site_test*で作成。

```
$ docker exec -ti django_template_db_1 bash
$ mysql -u root -p
Enter password:

mysql> CREATE DATABASE report_site_test CHARACTER SET utf8mb4;
```

## docker-compose 起動

```
$ docker-compose up -d
```

## create app

```
$ docker exec -ti django_template_web_1 bash
$ python3 manage.py startapp users
```

## migrate

```
$ docker exec -ti django_template_web_1 bash
$ python3 manage.py migrate
```

## seed

```
$ python3 manage.py loaddata fixtures/seed.json
```

http://localhost:8000/
