# dockerized rails stack
This is just a basic dockerized general-purpose boilerplate rails app

[![Build and Test](https://github.com/ChidaCompany/dockerized-rails-stack/actions/workflows/build_and_test.yml/badge.svg)](https://github.com/ChidaCompany/dockerized-rails-stack/actions/workflows/build_and_test.yml)
[![Code Size](https://img.shields.io/github/languages/code-size/chidacompany/dockerized-rails-stack)](https://github.com/ChidaCompany/dockerized-rails-stack/archive/refs/heads/master.zip)
[![Last commit](https://img.shields.io/github/last-commit/ChidaCompany/dockerized-rails-stack)](https://github.com/ChidaCompany/dockerized-rails-stack/commits/master)

[![Docker](https://img.shields.io/badge/container-docker-1291BD?logo=docker)](https://www.docker.com/)
[![Ruby version](https://img.shields.io/badge/ruby-2.7.4-CC342D?logo=ruby)](https://www.ruby-lang.org/en/news/2021/07/07/ruby-2-7-4-released/)
[![Rails version](https://img.shields.io/badge/rails-6.1.4-CC0200?logo=rubyonrails)](https://weblog.rubyonrails.org/2021/6/24/Rails-6-1-4-has-been-released/)
[![React](https://img.shields.io/badge/frontend-react-61DAFB?logo=react)](https://github.com/facebook/react/blob/main/CHANGELOG.md#1702-march-22-2021)

[![License](https://img.shields.io/github/license/ChidaCompany/dockerized-rails-stack)](https://github.com/ChidaCompany/dockerized-rails-stack/blob/master/LICENSE)

## Configuration
Open `config/database.yml` and modify your database names so it fits to your project

```
docker-compose build
docker-compose run web rails db:create
docker-compose up -d
```
## About this template

### Environment
This is built using Docker to ensure consistency among all engineers that would be involved in a project

### Test Suite
This template testing suite is intended to be a TDD testing suite.

We decided not to go with `Minitest` because this template is intended to be used with large projects. This means that at some point the projects will have lots of tests and lots of complex tests which, if done with `Minitest`, will end up requiring a lot of gems/hacks/extensions to make it look just like `RSpec`.

The test suite includes:
* `rspec-rails`
* `shoulda_matchers`
* `factory_bot_rails`

To confirm that the test suite is working properly you can run `docker-compose run web rspec --tag dry_run_example` it will run some simple specs using the gems listed above so you confirm that your environment is properly configured
