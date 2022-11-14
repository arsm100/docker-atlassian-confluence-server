from datetime import datetime
import json
import os
import sys
import urllib.request

args = sys.argv


def get_latest_version():
    feed_url = f'https://my.atlassian.com/download/feeds/{"eap" if args[1] == "EAP" else "current"}/confluence.json'
    feed_text = urllib.request.urlopen(feed_url).read().decode('utf-8')
    feed_json_array = json.loads(feed_text[feed_text.index('(') + 1:feed_text.rindex(')')])
    sorted_feed_json_array = sorted(filter(lambda release: release['edition'] == 'Standard', feed_json_array),
                                    key=lambda build: datetime.strptime(build['released'], '%d-%b-%Y'))
    latest_version = sorted_feed_json_array[-1]['version']

    os.system(f'echo "version={latest_version}" >> $GITHUB_OUTPUT')
    print(f'Latest version is {latest_version}')


if __name__ == "__main__":
    if len(args) > 2:
        provided_version = args[2]
        os.system(f'echo "version={provided_version}" >> $GITHUB_OUTPUT')
        print(f'Using provided version {provided_version}')
    else:
        get_latest_version()
