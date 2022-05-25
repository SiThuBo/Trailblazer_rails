# README

## Environment

- Ruby 2.7.2
- Docker
- Ruby on Rails 6.0.5
- Mysql 8.0

#### Step1 Clone this project

```bash
git clone https://github.com/SiThuBo/Trailblazer_rails.git
```

#### Step2 Start development environment using docker-compose

```bash
# Create Docker image from Dockerfile
docker-compose build

# Temporarily start the web container and access it with bash
docker-compose run --rm web bash

# Node module installation
bin/yarn install

# Database setup
bin/db:create
bin/db:migrate

# Install simple_form
rails generate simple_form:install

# End access to app container
exit

# Start docker-compose services
docker-compose up -d
```
All you have to do is access `http: // localhost: 3000`.
