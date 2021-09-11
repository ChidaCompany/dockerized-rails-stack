# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.2] - 2021-09-11
The bumping to rails 6.1.4 allowed to include another things to the project as well as including some community and documentation info on the repository

### Added
- Test suite is installed using Rspec and Shoulda Matchers. This also includes a dry-run which allows engineers to test if the environment is properly configured to start working
- React is added to the project as the frontend library
- Github Actions are configured to run whenever a push/pull-request is created against master.
- MIT License is added in case it is needed
- README is updated to improve readability and usage of this template project
- CHANGELOG is added to make it easier for users and contributors to see precisely what notable changes have been made between each release (or version) of the project.

## [1.0.0] - 2021-09-09
After a long time of inactivity, this project is updated and released with a pretty simple rails app and nothing else.

### Added
* Bumps rails version to 6.1.4

### Changed
* The structure of the project changed so everything is a single rails project in the main view however there are some extra folders and files to allow Docker to properly work
