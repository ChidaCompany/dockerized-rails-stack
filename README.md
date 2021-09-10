# dockerized rails stack
This is basically a dockerized general-purpose rails app

## Usage
Open `config/database.yml` and modify your database names so it fits to your project

```
docker-compose build
docker-compose run web rails db:create
docker-compose up -d
```
## About this template
### Testing
This template testing suite is intended to be a TDD testing suite.

We decided not to go with `Minitest` because this template is intended to be used with large projects. This means that at some point the projects will have lots of tests and lots of complex tests which, if done with `Minitest`, will end up requiring a lot of gems/hacks/extensions to make it look just like `RSpec`.

The test suite includes:
* `rspec-rails`
* `shoulda_matchers`
* `factory_bot_rails`

To confirm that the test suite is working properly you can run `docker-compose run -e DRY_RUN=true web rspec --tag dry_run_example` it will run some simple specs using the gems listed above so you confirm that your environment is properly configured
