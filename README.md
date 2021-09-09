# dockerized rails stack
This is basically a dockerized general-purpose rails app

## Usage
Open `config/database.yml` and modify your database names so it fits to your project

```
docker-compose build
docker-compose run web rails db:create
docker-compose up -d
```
