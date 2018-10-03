## Repeatable research
[![CircleCI](https://circleci.com/gh/PhilSk/repeatable_research.svg?style=svg)](https://circleci.com/gh/PhilSk/repeatable_research)
[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/PhilSk/repeatable_research/master)

### Requirements
`pipenv` installed and in PATH

### Usage

#### To init environment:
```bash
pipenv install
```

#### To convert notebook to HTML:
```bash
pipenv run jupyter nbconvert --to html "main"
```