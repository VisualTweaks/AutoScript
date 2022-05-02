import os
import requests

os.system("clear")
website = input("Enter Website: ")
web_url = requests.get(f"https://api.domaintools.com/v1/domaintools.com/whois/{website}")
print(web_url.text)