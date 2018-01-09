# Data Collection Script
## Dependencies
- [Python 3.6.4](https://www.python.org/)
- [PRAW v5.3.0](https://praw.readthedocs.io/en/latest/index.html)
- [MySQL Ver 15.1 Distrib 10.1.30-MariaDB](https://www.mysql.com/)

## Setup
Create `credential.ini` in the same directory as `main.py` with the follow info:
```
[User]
id:<Insert Reddit Application ID>
secret:<Insert Reddit Application Secret>
user_agent:<Insert custom User Agent so that Reddit's API can uniquely identify you>
uri:http://localhost:8080
[db]
host:<Insert hostname that MySQL runs on>
username:<Insert user for MySQL session>
password:<Insert password for said user>
name:<Insert name of receiving database>
``` 
