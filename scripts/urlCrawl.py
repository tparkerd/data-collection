import requests
import json
import time
import sys
import ConfigParser
import copy
import datetime

config = ConfigParser.ConfigParser()
config.read('predict_config.ini')
config.sections()
user_pass_dict = {'user': config.get("User", "user"),
			  'passwd': config.get("User", "passwd"),
			  'api_type': config.get("User", "api_type")}

s = requests.Session()

headers = {'User-Agent' : 'Mine Time user:' + config.get("User", "user")}
s.headers.update(headers)
url = r"http://www.reddit.com/api/login/"
r = s.post(url, data=user_pass_dict)
j = json.loads(r.content)

predictFile = open('suicidewatch.out', 'w+')
begin = 1483228800; ## Jan 1, 2017 @ 00:00:00 UTC
end = begin + 1800 ## increment by 30 mins
while True:
	exept_b = False
	if begin > 1514764799: # Dec 31, 2017 @ 23:59:59 UTC = 1514764799
		break;
	print begin
	## USE r/all, something prevents r/iama from running fast
	# TODO Exception Handling
	try:
		search_url = "https://www.reddit.com/r/all/search.json?q=timestamp%3A"+str(begin)+".."+str(end)+"&sort=new&restrict_sr=on&syntax=cloudsearch"
		child = s.get(search_url, timeout=30)
	except requests.exceptions.ConnectTimeout as e:
		print e

	if child.status_code != 200 or exept_b:
		exept_b = False
		sys.stderr.write(str(child.status_code))
		sys.stderr.write(search_url)

		time.sleep(.5)

		sys.stderr.write("Starting new session...")
		s = requests.Session()
		s.headers.update({'User-Agent' : 'Mine Time user:' + config.get("User", "user")})
		r = s.post(r'http://www.reddit.com/api/login', data=user_pass_dict)
	else:
		begin = end   + 1
		end   = begin + 1800
		json_data = json.loads(child.text)

		for elem in json_data['data']['children']:
			if 'permalink' in elem['data'] and elem['kind'] == 't3' and elem['data']['subreddit'] == 'IAmA':
				timeOut = datetime.datetime.fromtimestamp(int(elem['data']['created_utc'])).strftime('%Y-%m-%d %H:%M:%S')
				print elem['data']['permalink'] + ' ' + timeOut
				predictFile.write(elem['data']['permalink'].encode('utf-8').replace('?ref=search_posts', '') + ' : ' + str(int(elem['data']['created_utc'])) + '\n')

predictFile.close()
