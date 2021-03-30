# <a href="https://github.com/dmarcoux/pinbored">Pinbored</a>

[![CircleCI](https://circleci.com/gh/dmarcoux/pinbored.svg?style=svg)](https://circleci.com/gh/dmarcoux/pinbored)

### Development

1. Setup the development environment by running `bundle exec rake development:setup`.
2. Depending on what you want to do:
    - Start the web application which is available at http://localhost:3000: `docker-compose up web_app`
    - Start shell inside the web application container: `docker-compose run --rm --service-ports web_app bash`
