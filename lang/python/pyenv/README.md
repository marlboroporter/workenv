## Intro
* [pyenv virutalenv](https://github.com/pyenv/pyenv-virtualenv.git) 

## Tutorial

```bash
❯ pyenv virtualenv 3.12.1 algo_env
❯ pyenv versions
  system
  3.10.6
* 3.12.1 (set by /Users/jieli/.pyenv/version)
  3.12.1/envs/algo_env
  algo_env --> /Users/jieli/.pyenv/versions/3.12.1/envs/algo_env
❯ pyenv global algo_env
❯ pyenv versions
  system
  3.10.6
  3.12.1
  3.12.1/envs/algo_env
* algo_env --> /Users/jieli/.pyenv/versions/3.12.1/envs/algo_env (set by /Users/jieli/.pyenv/version)
❯ pip install pandas
  ...
❯ pip list
Package         Version
--------------- -------
numpy           1.26.4
pandas          2.2.0
pip             23.2.1
python-dateutil 2.8.2
pytz            2024.1
six             1.16.0
tzdata          2023.4

[notice] A new release of pip is available: 23.2.1 -> 24.0
[notice] To update, run: python3.12 -m pip install --upgrade pip

```

* to upgrade pip from current pyenv/env pip

```bash
❯ pip install --upgrade pip
❯ pip list
Package         Version
--------------- -------
numpy           1.26.4
pandas          2.2.0
pip             24.0
python-dateutil 2.8.2
pytz            2024.1
six             1.16.0
tzdata          2023.4
```