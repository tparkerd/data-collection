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
## Usage
### Command Line Arguments
```
usage: DataCollector.py [-h] [-o] [-db] [-start] [-end] [-sub]

Filters and analyzes using Vader Sentiment Analyzer

optional arguments:
  -h, --help            show this help message and exit
  -db                   Specify database name. Default: Current date and time
  -sub                  Specify subreddit(s) by name to parse.
  -start                Format: YYYY-MM-DD. Earliest (starting) time to search
                        for submission. Inclusive.
  -end                  Format: YYYY-MM-DD. Most recent (ending) time to
                        search for submission. Exclusive.
# Example:
# Pull all submissions and top-level comments from r/depression and r/GetMotivated
# from 1 Jan 2016 at 00:00 up to 1 Jan 2017 at 00:00.

./DataCollector.py -start 2016-01-01 -end 2017-01-01 -sub depression GetMotivated

# To run the script as a background process, use nohup and &
# Example:

nohup ./DataCollector.py -start 2016-01-01 -end 2017-01-01 -sub depression GetMotivated &
```

### Extra
Errors are appended to `error.log` with the SQL that failed.
